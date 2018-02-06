<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use AppBundle\Form\PhotoType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;


class AnnonceType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        // $admin = getUser();
        
        $builder->add('titre', null, array( "label" => "titre"))
            ->add('pieces', IntegerType::class, array( "label" => "nombres de pièces"))
            ->add('prix', MoneyType::class, array("label" => "Prix du bien"))
            ->add('description', TextareaType::class, array("label" => "Desscription du bien"))
            ->add('client', ClientType::class, array("label" => "Client"))
            ->add('typeAnnonce', null, array("label" => "type de l'annonce"))

            ->add('files', CollectionType::class,array(
                    "label" =>  false,
                    'entry_type' => PhotoType::class, 
                    'allow_add' => true,
                    'by_reference' => false,
                    ));

    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Annonce'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_annonce';
    }


}
