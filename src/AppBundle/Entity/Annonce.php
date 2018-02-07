<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints\DateTime;
use Doctrine\Common\Collections\ArrayCollection;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\HttpFoundation\File\File;





/**
 * Annonce
 *
 * @ORM\Table(name="ann_annonce")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\AnnonceRepository")
 * @Vich\Uploadable

 */
class Annonce
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="ann_titre", type="string", length=255)
     */
    private $titre;

    
    /**
     * @var int
     *
     * @ORM\Column(name="pieces", type="integer")
     */
    private $pieces;

    /**
     * @var float
     *
     * @ORM\Column(name="ann_prix", type="float")
     */
    private $prix;

    /**
     * @var string
     *
     * @ORM\Column(name="ann_description", type="text", length=1000)
     */
    private $description;

    /**
     * Many Annonce have One Client.
     * @ORM\ManyToOne(targetEntity="Client", inversedBy="annonces", cascade={"persist", "remove"})
     * @ORM\JoinColumn(name="cli_oid", referencedColumnName="cli_oid")
     */
    private $client;

    /**
     * Many Annonce have One Client.
     * @ORM\ManyToOne(targetEntity="Admin", inversedBy="annonces")
     * @ORM\JoinColumn(name="adm_oid", referencedColumnName="adm_oid")
     */
    private $admin;

    /**
     * Many Annonce have One TypeAnnonce.
     * @ORM\ManyToOne(targetEntity="TypeAnnonce", inversedBy="annonces")
     * @ORM\JoinColumn(name="typ_oid", referencedColumnName="typ_oid")
     */
    private $typeAnnonce;

    /**
     * @ORM\ManyToMany(targetEntity="Photo", cascade={"persist", "remove"})
     */
    private $files;

    function __construct() {
        $this->files = new ArrayCollection();
    }


    /**
     * Get files
     *
     * @return ArrayCollection
     */
    function getFiles()
    {
        return $this->files;
    }

    /**
     * Set files
     * @param type $files
     */
    function setFiles($files)
    {
        $this->files = $files;
    }



    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set titre
     *
     * @param string $titre
     *
     * @return Annonce
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set pieces
     *
     * @param integer $pieces
     *
     * @return Annonce
     */
    public function setPieces($pieces)
    {
        $this->pieces = $pieces;

        return $this;
    }

    /**
     * Get pieces
     *
     * @return integer
     */
    public function getPieces()
    {
        return $this->pieces;
    }

    /**
     * Set prix
     *
     * @param float $prix
     *
     * @return Annonce
     */
    public function setPrix($prix)
    {
        $this->prix = $prix;

        return $this;
    }

    /**
     * Get prix
     *
     * @return float
     */
    public function getPrix()
    {
        return $this->prix;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Annonce
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set client
     *
     * @param \AppBundle\Entity\Client $client
     *
     * @return Annonce
     */
    public function setClient(\AppBundle\Entity\Client $client = null)
    {
        $this->client = $client;

        return $this;
    }

    /**
     * Get client
     *
     * @return \AppBundle\Entity\Client
     */
    public function getClient()
    {
        return $this->client;
    }

    /**
     * Set admin
     *
     * @param \AppBundle\Entity\Admin $admin
     *
     * @return Annonce
     */
    public function setAdmin(\AppBundle\Entity\Admin $admin = null)
    {
        $this->admin = $admin;

        return $this;
    }

    /**
     * Get admin
     *
     * @return \AppBundle\Entity\Admin
     */
    public function getAdmin()
    {
        return $this->admin;
    }

    /**
     * Set typeAnnonce
     *
     * @param \AppBundle\Entity\TypeAnnonce $typeAnnonce
     *
     * @return Annonce
     */
    public function setTypeAnnonce(\AppBundle\Entity\TypeAnnonce $typeAnnonce = null)
    {
        $this->typeAnnonce = $typeAnnonce;

        return $this;
    }

    /**
     * Get typeAnnonce
     *
     * @return \AppBundle\Entity\TypeAnnonce
     */
    public function getTypeAnnonce()
    {
        return $this->typeAnnonce;
    }

    

    /**
     * Add file
     *
     * @param \AppBundle\Entity\Photo $file
     *
     * @return Annonce
     */
    public function addFile(\AppBundle\Entity\Photo $file)
    {
        $this->files[] = $file;

        return $this;
    }

    /**
     * Remove file
     *
     * @param \AppBundle\Entity\Photo $file
     */
    public function removeFile(\AppBundle\Entity\Photo $file)
    {
        $this->files->removeElement($file);
    }
}
