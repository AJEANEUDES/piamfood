<?php

namespace App\Controller\Admin;

use App\Entity\Image;
use App\Form\ImageType;
use App\Repository\ImageRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\File\Exception\FileException;


/**
 * @Route("/admin/image")
 */
class ImageController extends AbstractController
{
    /**
     * @Route("/", name="admin_image_index", methods={"GET"})
     */
    public function index(ImageRepository $imageRepository): Response
    {
        return $this->render('admin/image/index.html.twig', [
            'images' => $imageRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new/{id}", name="admin_image_new", methods={"GET", "POST"})
     */
    public function new(Request $request,$id, EntityManagerInterface $entityManager, ImageRepository $imageRepository): Response
    {
        // echo "Restaurant id:". $id;
       // die();

        $image = new Image();
        $form = $this->createForm(ImageType::class, $image);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();

            
            //************** file upload ***>>>>>>>>>>>>
            /** @var file $file */
            $file = $form['image']->getData();
            if ($file) {
                $fileName = $this->generateUniqueFileName() . '.' . $file->guessExtension();
                // Move the file to the directory where brochures are stored
                try {
                    $file->move(
                        $this->getParameter('images_directory'), // in Servis.yaml defined folder for upload images
                        $fileName
                    );
                } catch (FileException $e) {
                    // ... handle exception if something happens during file upload
                }
                $image->setImage($fileName); // Related upload file name with Restaurant table image field
            }
            //<<<<<<<<<<<<<<<<<******** file upload ***********>

            $entityManager->persist($image);
            $entityManager->flush();

            return $this->redirectToRoute('admin_image_new', ['id'=> $id], Response::HTTP_SEE_OTHER);
        }

        $images = $imageRepository->findBy(['restaurant'=>$id]);


        return $this->render('admin/image/new.html.twig', [
            'image' => $image,
            'id'=>$id,
            'images' => $images,
            'form' => $form->createView(),
        ]);
    }

      /**
     * @return string
     */
    private function generateUniqueFileName()
    {
        // md5() reduces the similarity of the file names generated by
        // uniqid(), which is based on timestamps
        return md5(uniqid());
    }


    /**
     * @Route("/{id}", name="admin_image_show", methods={"GET"})
     */
    public function show(Image $image): Response
    {
        return $this->render('admin/image/show.html.twig', [
            'image' => $image,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="admin_image_edit", methods={"GET", "POST"})
     */
    public function edit(Request $request, Image $image, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(ImageType::class, $image);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            $entityManager->flush();

            return $this->redirectToRoute('admin_image_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('admin/image/edit.html.twig', [
            'image' => $image,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}/{hid}", name="admin_image_delete", methods={"POST"})
     */
    public function delete(Request $request, $hid, Image $image, EntityManagerInterface $entityManager): Response
    {
        //echo "Otel Id: ".$hid;
        //die();

        if ($this->isCsrfTokenValid('delete'.$image->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($image);
            $entityManager->flush();
        }

        return $this->redirectToRoute('admin_image_new', ['id'=> $hid], Response::HTTP_SEE_OTHER);
    }
}
