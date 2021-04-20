<?php

namespace App\DataFixtures;

use App\Entity\Article;
use Faker\Factory;
use App\Entity\User;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\DataFixtures\DependentFixtureInterface;
use Symfony\Component\Security\Core\User\User as UserUser;
use Symfony\Component\Console\CommandLoader\FactoryCommandLoader;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class ArticlesFixtures extends Fixture implements DependentFixtureInterface
{

    public function load(ObjectManager $manager)
    {
        $faker = Factory::create('fr_FR');
        $faker->seed(0);

        for ($i=0; $i < 20; $i++) { 
            $user = $this->getReference('users_user'.$faker->numberBetween(1,24));
            
            $article = new Article();
            $article
                ->setUser($this->getReference('firstAdmin'))
                ->addCategory($category)
                ->setTitle($faker->realText(20))
                ->setContent($faker->realText(2500))
                ->setPublicationDate($faker->dateTimeInInterval('-10 months','+6 months'))
                ->setLastUpdateDate($lastUpdateDate)
                ->setPicture($faker->text(20))
                ->setIsPublished($faker->numberBetween(0,1))
                ;
            $manager->persist($article);
            $this->addReference('articles_article'.$i, $article);
        }

        for ($i=0; $i < 5 ; $i++) { 
            $category = $this->getReference('categories_category'.$faker->numberBetween(1,4));
            
            $article = new Article();
            $article
                ->setUser($this->getReference('firstAdmin'))
                ->addCategory($category)
                ->setTitle($faker->realText(20))
                ->setContent($faker->realText(2500))
                ->setPublicationDate($faker->dateTimeInInterval('-10 months','+6 months'))
                ->setLastUpdateDate($lastUpdateDate)
                ->setPicture($faker->text(20))
                ->setIsPublished($faker->numberBetween(0,1))
                ;
            $manager->persist($article);
            $this->addReference('admin_articles_article'.$i, $article);
        }
        $manager->flush();
    }

    public function getDependencies()
    {
        return array(
            UsersFixtures::class,
            CategoriesFixtures::class
        );
    }

}