<?php

namespace App\DataFixtures;

use Faker\Factory;
use App\Entity\User;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UsersFixtures extends Fixture
{

    private $encoder;

    public function __construct(UserPasswordEncoderInterface $encoder)
    {
        $this->encoder = $encoder;
    }

    public function load(ObjectManager $manager)
    {
        // $product = new Product();
        // $manager->persist($product);

        $faker = Factory::create('fr_FR');
        $faker->seed(0);

        $user = new User();
        $user
            ->setEmail('test@test.fr')
            ->setPassword($this->encoder->encodePassword($user,'user'))
            ->setUsername($faker->username)
            ->setRoles(['ROLE_USER'])
            ;
        
        $manager->persist($user);
        $this->addReference('User_1', $user);


        $admin = new User();
        $admin
            ->setEmail('admin@admin.ex')
            ->setPassword($this->encoder->encodePassword($user,'user'))
            ->setUsername($faker->username)
            ->setRoles(['ROLE_ADMIN'])
            ;
        
        $manager->persist($admin);
        $this->addReference('Admin_1', $admin);

        $manager->flush();
    }
}