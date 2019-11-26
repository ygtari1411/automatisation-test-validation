package com.QA.steps.Talent.Recrutement;

import com.QA.locators.CommonLocators;
import com.QA.locators.RecrutementLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class WorkflowDemandeManagerValidee {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();

    @Then("le nom de l utilisateur {string} est affiche en haut a gauche")
    public void leNomDeLUtilisateurEstAfficheEnHautAGauche(String arg0) {

        boolean myDynamicElement = (new WebDriverWait(driver,60))
                .until(ExpectedConditions.attributeContains(By.xpath(CommonLocators.Icone_Nom_Utilisateur),"innerText", arg0));
         
    }


    @When("l utlisateur clique sur l icone mon equipe")
    public void lUtlisateurCliqueSurLIconeMonEquipe() {

        driver.findElement(By.xpath(CommonLocators.Icone_MonEquipe)).click();
    }


    @When("l utilisateur clique sur l icone demande de recrutement")
    public void lUtilisateurCliqueSurLIconeDemandeDeRecrutement() throws InterruptedException {

        driver.findElement(By.xpath(RecrutementLocators.Icone_Demande_Recrutement)).click();
        action.pause(driver,3000);
    }


    @When("le manager clique pour ajouter une demande_rec")
    public void leManagerCliquePourAjouterUneDemande_rec() {
            driver.findElement(By.xpath(RecrutementLocators.Bouton_Ajouter_Demande_Recrutement)).click();
    }


    @And("le manager saisi l intitule_demande_rec {string}")
    public void leManagerSaisiLIntitule_demande_rec(String arg0) throws InterruptedException {

        driver.findElement(By.xpath(RecrutementLocators.Champ_Imput_texte_Intitulé)).sendKeys(arg0);

    }





}


