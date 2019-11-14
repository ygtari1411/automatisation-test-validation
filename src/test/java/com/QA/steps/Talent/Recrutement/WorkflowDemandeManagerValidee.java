package com.QA.steps.Talent.Recrutement;

import com.QA.locators.CommonLocators;
import com.QA.locators.RecrutementLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
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



}
