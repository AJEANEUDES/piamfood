<?php

namespace App\Controller;

use App\Entity\Admin\Messages;
use App\Repository\ParametreRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ImageRepository;
use App\Entity\Restaurant;
use App\Repository\RestaurantRepository;
use App\Form\Admin\MessagesType;
use Symfony\Component\Mime\Email;
use Symfony\Component\Mailer\Mailer;
use Symfony\Component\Mailer\Transport\TransportInterface;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mailer\Transport\Smtp\EsmtpTransport;
use Symfony\Component\Mailer\Bridge\Google\Smtp\GmailTransport;




class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(ParametreRepository $parametreRepository,RestaurantRepository $restaurantRepository): Response
    {

        $parametre=$parametreRepository->findAll();
        $slider=$restaurantRepository->findBy(['status'=>'True'],['titre'=>'ASC'] ,3);
        
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'parametre'=>$parametre,
            'slider'=>$slider,
        ]);

    }

     /**
 * @Route("/restaurant/{id}", name="restaurant_show", methods={"GET"})
 */
public function show(Restaurant $restaurant,$id): Response
{
  //  $images=$imageRepository->findBy(['restaurant'=>$id]);
    //$comments=$commentRepository->findBy(['hotelid'=>$id, 'status'=>'True']);
   // $rooms =$roomRepository->findBy(['hotelid'=>$id, 'status'=>'True']);

    return $this->render('home/restaurantshow.html.twig', [
        'restaurant' => $restaurant,
      //  'images' => $images,
      //  'rooms' => $rooms,
       // 'comments' => $comments,
    ]);
}

    /**
     * @Route("/apropos", name="apropos")
     */
    public function apropos(ParametreRepository $parametreRepository): Response
    {
        $parametre=$parametreRepository->findAll();
        return $this->render('home/about.html.twig', [
        'parametre'=>$parametre,

         ] );
    }

    
    /**
     * @Route("/service", name="service")
     */
    public function service(): Response
    {
        return $this->render('home/service.html.twig', 
            
        );
    }

      /**
     * @Route("/menu", name="menu")
     */
    public function menu(): Response
    {
        return $this->render('home/menu.html.twig', 
            
        );
    }

    
      /**
     * @Route("/reserver", name="reserver")
     */
    public function reserver(): Response
    {
        return $this->render('home/reserver.html.twig', 
            
        );
    }

      /**
     * @Route("/equipe", name="equipe")
     */
    public function equipe(): Response
    {
        return $this->render('home/equipe.html.twig', 
            
        );
    }


      /**
     * @Route("/temoignage", name="temoignage")
     */
    public function temoignage(): Response
    {
        return $this->render('home/temoignage.html.twig', 
            
        );
    }

    
      /**
     * @Route("/contact", name="contact" , methods={"GET","POST"})
     */
    public function contact(ParametreRepository $parametreRepository ,Request $request): Response
    {

        $message = new Messages();
        $form = $this->createForm(MessagesType::class, $message);
        $form->handleRequest($request);
        $submittedToken = $request->request->get('token');
        $parametre=$parametreRepository->findAll(); // Get setting data
       // echo $setting[0]->getTitle();
       // dump($setting);
       // die();
       if ($form->isSubmitted()) {
        if ($this->isCsrfTokenValid('form-message', $submittedToken)) {
            $entityManager = $this->getDoctrine()->getManager();
            $message->setStatus('New');
            $message->setIp($_SERVER['REMOTE_ADDR']);
            $entityManager->persist($message);
            $entityManager->flush();
            $this->addFlash('success', 'Your message has been sent successfuly');

            
           return $this->redirectToRoute('contact');
        }
    }


        return $this->render('home/contact.html.twig', [

            'parametre'=>$parametre,
            'form' => $form->createView(),
        
            ]
            
        );
    }

    
      /**
     * @Route("/faq", name="faq")
     */
    public function faq(): Response
    {
        return $this->render('home/faq.html.twig', 
            
        );
    }

     /**
     * @Route("/userlogin", name="userlogin")
     */
    public function userlogin(): Response
    {
        return $this->render('home/userlogin.html.twig', 
            
        );
    }

    
    
    
}
