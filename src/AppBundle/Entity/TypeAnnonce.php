<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * TypeAnnonce
 *
 * @ORM\Table(name="typ_type_annonce")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\TypeAnnonceRepository")
 */
class TypeAnnonce
{
    /**
     * @var int
     *
     * @ORM\Column(name="typ_oid", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="typ_nom", type="string", length=255)
     */
    private $nom;


    /**
     * One TypeAnnonce has Many Annonces.
     * @ORM\OneToMany(targetEntity="Annonce", mappedBy="typeAnnonce")
     */
    private $annonces;

    public function __construct()
    {
        $this->annonces = new ArrayCollection();
    }
    public function __toString()
    {
        return $this->nom;
    }

    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nom
     *
     * @param string $nom
     *
     * @return TypeAnnonce
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Add annonce
     *
     * @param \AppBundle\Entity\Annonce $annonce
     *
     * @return TypeAnnonce
     */
    public function addAnnonce(\AppBundle\Entity\Annonce $annonce)
    {
        $this->annonces[] = $annonce;

        return $this;
    }

    /**
     * Remove annonce
     *
     * @param \AppBundle\Entity\Annonce $annonce
     */
    public function removeAnnonce(\AppBundle\Entity\Annonce $annonce)
    {
        $this->annonces->removeElement($annonce);
    }

    /**
     * Get annonces
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getAnnonces()
    {
        return $this->annonces;
    }
}
