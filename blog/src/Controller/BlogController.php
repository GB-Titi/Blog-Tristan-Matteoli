<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Article;
use App\Form\ArticleType;
use App\Entity\Commentaires;
use App\Form\CommentaireFormType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;

class BlogController extends AbstractController
{
    public function index()
    {
        //on récupère un tableau d'article en passant par le repository
        $articles = $this->getDoctrine()->getRepository(Article::class)->findBy(
            ['isPublished' => true],
            ['publicationDate' => 'desc']
        );

        //on l'envoie à la vue
        return $this->render('blog/index.html.twig', ['articles' => $articles]);
    }

    //fonction d'ajout d'article
    public function add(Request $request)
    {
        $article = new Article();
        $form = $this->createForm(ArticleType::class, $article);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $article->setLastUpdateDate(new \DateTime());

            if ($article->getPicture() !== null) { //on vérifie si l'artickle à une image
                $file = $form->get('picture')->getData(); //si il a pas on la get du champs picture
                $fileName =  uniqid(). '.' .$file->guessExtension();

                try {
                    $file->move( //move dans le dossier d'image
                        $this->getParameter('images_directory'), // Le dossier dans le quel le fichier va etre charger
                        $fileName
                    );
                } catch (FileException $e) {
                    return new Response($e->getMessage());
                }

                $article->setPicture($fileName);
            }

            if ($article->getIsPublished()) {
                $article->setPublicationDate(new \DateTime());
            }

            $user = $this->getUser();
            $article->setUser($user);

            $em = $this->getDoctrine()->getManager(); // On récupère l'entity manager
            $em->persist($article); // On confie notre entité à l'entity manager (on persist l'entité)
            $em->flush(); // On execute la requete

            return new Response('L\'article a bien été enregistrer.');
        }

    	return $this->render('blog/add.html.twig', [
            'form' => $form->createView()
        ]);
    }


    //fonction d'affichage d'article
    public function show(Article $article, Request $request)
    {
        //on instancie l'entity commentaires
        $commentaires = new Commentaires();

        //on crée le formulaire
        $form = $this->createForm(CommentaireFormType::class, $commentaires);

        //on récupère les données saisies
        $form->handleRequest($request);

        //vérification envoie formulaire + contenu valide
        if($form->isSubmitted() && $form->isValid()){
            //fomulaire envoyé et données valides
            $user = $this->getUser();
            $commentaires->setUsername($user);
            $commentaires->setArticle($article);
            $commentaires->setCreatedAt(new \DateTime('now'));

            // on instancie doctrine
            $doctrine = $this->getDoctrine()->getManager();

            //on hydrate $commentaires
            $doctrine->persist($commentaires);

            //on écrit dans la bdd
            $doctrine->flush();
            
            //redirect pour ne pas soumettre plusieurs fois formulaire
            return $this->redirectToRoute('article_show', array(
                'id' => $article->getId()
            ));
        }

    	return $this->render('blog/show.html.twig', [
            'article' => $article,
            'formComment' => $form->createView()
        ]);
    }

    //fonction d'édition d'article
    public function edit(Article $article, Request $request)
    {
        $oldPicture = $article->getPicture(); //on garde l'ancienne image dans une variable (pour plus tard=)

        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $article->setLastUpdateDate(new \DateTime()); //sur un edit on change la date du dernière update

            if ($article->getIsPublished()) {
                $article->setPublicationDate(new \DateTime());
            }

            if ($article->getPicture() !== null && $article->getPicture() !== $oldPicture) { //si il y a une image mais qu'elle est diff de l'ancienne
                $file = $form->get('picture')->getData();
                $fileName = uniqid(). '.' .$file->guessExtension();

                try {
                    $file->move(
                        $this->getParameter('images_directory'),
                        $fileName
                    );
                } catch (FileException $e) {
                    return new Response($e->getMessage());
                }

                $article->setPicture($fileName);
            } else {
                $article->setPicture($oldPicture);
            }

            $em = $this->getDoctrine()->getManager();
            $em->persist($article);
            $em->flush();

            return new Response('L\'article a bien été modifier.');
        }

    	return $this->render('blog/edit.html.twig', [
            'article' => $article,
            'form' => $form->createView()
        ]);
    }

    //fonction suppression d'article
    public function remove($id)
    {
    	return new Response('<h1>Supprimer l\'article ' .$id. '</h1>');
    }

    public function admin()
    {
        $articles = $this->getDoctrine()->getRepository(Article::class)->findBy(
            [],
            ['id' => 'DESC'],5
        );

        return $this->render('admin/index.html.twig', [
            'articles' => $articles
        ]);
    }

    public function admin_comments()
    {
        $articles = $this->getDoctrine()->getRepository(Article::class)->findBy(
            [],
            ['lastUpdateDate' => 'DESC']
        );

        $users = $this->getDoctrine()->getRepository(User::class)->findAll();

        return $this->render('admin/admin_comments.html.twig', [
            'articles' => $articles,
            'users' => $users,
        ]);
    }

    public function admin_users()
    {

        $users = $this->getDoctrine()->getRepository(User::class)->findAll();

        return $this->render('admin/admin_users.html.twig', [
            'users' => $users,
        ]);
    }

    public function admin_articles()
    {

        $articles = $this->getDoctrine()->getRepository(Article::class)->findBy(
            [],
            ['lastUpdateDate' => 'DESC']
        );

        return $this->render('admin/admin_articles.html.twig', [
            'articles' => $articles
        ]);
    }

    public function update_comment_state($id)
    {
        $entityManager = $this->getDoctrine()->getManager();
        $commentaire = $entityManager->getRepository(Commentaires::class)->find($id);

        if (!$commentaire) {
            throw $this->createNotFoundException(
                'No comments found for id '.$id
            );
        }

        $this->getDoctrine()->getManager();
        $commentaire->setActive();
        $entityManager->flush();

        return $this->render('admin/admin_validate_state_comm.html.twig');
    }

    public function account()
    {
    	return $this->render('blog/account.html.twig');
    }

    public function a_propos()
    {
    	return $this->render('blog/propos.html.twig');
    }

    public function __toString() 
    {
        return (string) $this->name; 
    }
}
