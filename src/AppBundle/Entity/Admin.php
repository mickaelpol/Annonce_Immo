<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * 
 * Admin
 * 
 * @ORM\Entity
 * @ORM\Table(name="adm_admin")  
 */
class Admin extends BaseUser
{
    /**
     * @var int
     *
     * @ORM\Column(name="adm_oid", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @var string
     *
     * @ORM\Column(name="adm_prenom", type="string", length=255)
     */
    private $prenom;
    
    
    /**
     * @var string
     *
     * @ORM\Column(name="adm_telephone", type="string", length=255)
     */
    private $telephone;

    /**
     * One Admin has Many Annonces.
     * @ORM\OneToMany(targetEntity="Annonce", mappedBy="admin")
     */
    private $annonces;

    public function __construct()
    {
        $this->annonces = new ArrayCollection();
    }

    public function __toString()
    {
        return $this->username . " " . $this->prenom;
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
     * Set prenom
     *
     * @param string $prenom
     *
     * @return Admin
     */
    public function setPrenom($prenom)
    {
        $this->prenom = $prenom;

        return $this;
    }

    /**
     * Get prenom
     *
     * @return string
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * Set telephone
     *
     * @param string $telephone
     *
     * @return Admin
     */
    public function setTelephone($telephone)
    {
        $this->telephone = $telephone;

        return $this;
    }

    /**
     * Get telephone
     *
     * @return string
     */
    public function getTelephone()
    {
        return $this->telephone;
    }

    /**
     * Add annonce
     *
     * @param \AppBundle\Entity\Annonce $annonce
     *
     * @return Admin
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
