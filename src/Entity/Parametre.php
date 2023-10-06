<?php

namespace App\Entity;

use App\Repository\ParametreRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ParametreRepository::class)
 */
class Parametre
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $titre;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $motscles;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $entreprise;

    /**
     * @ORM\Column(type="string", length=150, nullable=true)
     */
    private $adresse;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $telephone;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    private $email;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $smtpserver;

    /**
     * @ORM\Column(type="string", length=50, nullable=true)
     */
    private $smtpemail;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $smtppassword;

    /**
     * @ORM\Column(type="string", length=5, nullable=true)
     */
    private $smtpport;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    private $facebook;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    private $instagram;

    /**
     * @ORM\Column(type="string", length=100, nullable=true)
     */
    private $whatsapp;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $apropos;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $contact;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $reference;

    /**
     * @ORM\Column(type="string", length=6, nullable=true)
     */
    private $status;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(?string $titre): self
    {
        $this->titre = $titre;

        return $this;
    }

    public function getMotscles(): ?string
    {
        return $this->motscles;
    }

    public function setMotscles(?string $motscles): self
    {
        $this->motscles = $motscles;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getEntreprise(): ?string
    {
        return $this->entreprise;
    }

    public function setEntreprise(?string $entreprise): self
    {
        $this->entreprise = $entreprise;

        return $this;
    }

    public function getAdresse(): ?string
    {
        return $this->adresse;
    }

    public function setAdresse(?string $adresse): self
    {
        $this->adresse = $adresse;

        return $this;
    }

    public function getTelephone(): ?string
    {
        return $this->telephone;
    }

    public function setTelephone(?string $telephone): self
    {
        $this->telephone = $telephone;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(?string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getSmtpserver(): ?string
    {
        return $this->smtpserver;
    }

    public function setSmtpserver(?string $smtpserver): self
    {
        $this->smtpserver = $smtpserver;

        return $this;
    }

    public function getSmtpemail(): ?string
    {
        return $this->smtpemail;
    }

    public function setSmtpemail(?string $smtpemail): self
    {
        $this->smtpemail = $smtpemail;

        return $this;
    }

    public function getSmtppassword(): ?string
    {
        return $this->smtppassword;
    }

    public function setSmtppassword(?string $smtppassword): self
    {
        $this->smtppassword = $smtppassword;

        return $this;
    }

    public function getSmtpport(): ?string
    {
        return $this->smtpport;
    }

    public function setSmtpport(?string $smtpport): self
    {
        $this->smtpport = $smtpport;

        return $this;
    }

    public function getFacebook(): ?string
    {
        return $this->facebook;
    }

    public function setFacebook(?string $facebook): self
    {
        $this->facebook = $facebook;

        return $this;
    }

    public function getInstagram(): ?string
    {
        return $this->instagram;
    }

    public function setInstagram(?string $instagram): self
    {
        $this->instagram = $instagram;

        return $this;
    }

    public function getWhatsapp(): ?string
    {
        return $this->whatsapp;
    }

    public function setWhatsapp(?string $whatsapp): self
    {
        $this->whatsapp = $whatsapp;

        return $this;
    }

    public function getApropos(): ?string
    {
        return $this->apropos;
    }

    public function setApropos(?string $apropos): self
    {
        $this->apropos = $apropos;

        return $this;
    }

    public function getContact(): ?string
    {
        return $this->contact;
    }

    public function setContact(?string $contact): self
    {
        $this->contact = $contact;

        return $this;
    }

    public function getReference(): ?string
    {
        return $this->reference;
    }

    public function setReference(?string $reference): self
    {
        $this->reference = $reference;

        return $this;
    }

    public function getStatus(): ?string
    {
        return $this->status;
    }

    public function setStatus(?string $status): self
    {
        $this->status = $status;

        return $this;
    }
}
