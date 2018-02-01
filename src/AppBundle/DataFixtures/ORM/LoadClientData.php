<?php
// /src/AppBundle/DataFixtures/ORM/LoadNomDeLaClassData.php
namespace AppBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use AppBundle\Entity\Client;


class LoadClientData implements FixtureInterface
{

    public function load(ObjectManager $manager)
    {

        for ($i = 0; $i < 5; $i++) {
            $client = new Client();
            $client->setNom('client' . $i);
            $client->setPrenom("client" . $i);
            $client->setTelephone("010203040". $i);
            $manager->persist($client);
        }
        $manager->flush();

    }

}