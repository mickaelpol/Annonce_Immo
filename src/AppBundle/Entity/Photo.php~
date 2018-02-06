<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\HttpFoundation\File\File;



/**
 * Photo
 *
 * @ORM\Table(name="pho_photo")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\PhotoRepository")
 * @Vich\Uploadable
 */
class Photo
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
     * @ORM\Column(name="pho_file", type="string", length=255, unique=true)
     * @Assert\NotBlank(message="Please, upload the product brochure as a PDF file.")
     * @Assert\File(mimeTypes={ "application/pdf" })
     */
    private $file;

    /**
     * @Vich\UploadableField(mapping="product_images", fileNameProperty="file")
     * @var File
     */
    private $imageFile;

    /**
     * @ORM\Column(type="datetime")
     * @var \DateTime
     */
    private $updatedAt;


    /**
     * @var string
     *
     * @ORM\Column(name="pho_nom", type="string", length=255)
     */
    private $nom;


    public function setImageFile(File $file = null)
    {
        $this->imageFile = $file;

        // VERY IMPORTANT:
        // It is required that at least one field changes if you are using Doctrine,
        // otherwise the event listeners won't be called and the file is lost
        if ($file) {
            // if 'updatedAt' is not defined in your entity, use another property
            $this->updatedAt = new \DateTime('now');
        }
    }

    public function getImageFile()
    {
        return $this->imageFile;
    }

    public function setFile($file)
    {
        $this->file = $file;
    }

    public function getFile()
    {
        return $this->file;
    }
    
    

    /**
     *
     * @return Files
     */
    function getUser() {
        return $this->user;
    }

    // /**
    //  * Set file
    //  *
    //  * @param string $file
    //  *
    //  * @return Files
    //  */
    // public function setFile($file)
    // {
    //     $this->file = $file;

    //     return $this;
    // }

    // /**
    //  * Get file
    //  *
    //  * @return string
    //  */
    // public function getFile()
    // {
    //     return $this->file;
    // }


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
     * @return Photo
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
     * Set updatedAt
     *
     * @param \DateTime $updatedAt
     *
     * @return Photo
     */
    public function setUpdatedAt($updatedAt)
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    /**
     * Get updatedAt
     *
     * @return \DateTime
     */
    public function getUpdatedAt()
    {
        return $this->updatedAt;
    }
}
