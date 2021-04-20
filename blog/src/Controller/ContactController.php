<?php

namespace App\Controller;

use App\Form\ContactType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ContactController extends AbstractController
{
    /**
     * @Route("/contact", name="contact")
     */
    public function index(Request $request, \Swift_Mailer $mailer): Response
    {
        $form = $this->createForm(ContactType::class);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $contact = $form->getData();

            //on envoie le mail
            $message = (new \Swift_Message('Nouveau Contact'))

            //on attribue l'expéditeur
            ->setFrom($contact['email'])

            //on attribue le destinataire
            ->setTo('tristanmatteoli@gmail.com')
            
            // on crée le message avec la vue twig
            ->setBody(
                $this->renderView(
                    'emails/contact.html.twig', compact('contact')
                ),
                'text/html'
            )
            

            //on envoie le message
            ;
            $mailer->send($message);

            //pour prévenir l'utilisateur de l'envoie
            $this->addFlash('success', 'Le message a bien été envoyé');
            return $this->redirectToRoute('homepage');
        }
        return $this->render('contact/index.html.twig', [
            'contactType' => $form->createView()
        ]);
    }
}
