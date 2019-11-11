package com.QA.steps.connect.timeline;


import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import com.QA.locators.TimelineLocators;


public class PublicationNouveauStatut {


    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();



    @When("^L'utilisateur clique pour publier un nouveau statut$")
    public void lUtilisateurCliquePourPublierUnNouveauStatut() throws InterruptedException {

        driver.findElement(By.id(TimelineLocators.Champ_Statut)).click();
        action.pause(driver, 300);

    }

    @And ("L'utilisateur rédige son statut {string}")
    public void lUtilisateurRédigeSonStatut(String arg0) throws InterruptedException {
        driver.findElement(By.xpath(TimelineLocators.Champ_Input_Statut)).sendKeys(arg0);
        action.pause(driver, 300);
    }

    @And("^L'utilisateur choisi la timeline cible$")
    public void lUtilisateurChoisiLaTimelineCible() throws InterruptedException {

        driver.findElement(By.xpath(TimelineLocators.Liste_Deroulante_Timeline)).click();
        action.pause(driver, 80);
        driver.findElement(By.xpath(TimelineLocators.Premiere_Timeline_liste)).click();

    }

    @And("^L'utilisateur clique sur Publier$")
    public void lUtilisateurCliqueSurPublier() throws InterruptedException {

        action.pause(driver, 80);
        driver.findElement(By.xpath(TimelineLocators.Bouton_Publication_Statut)).click();

    }

    @Then("^Vérifier que le statut est publié$")
    public void vérifierQueLeStatutEstPublié() throws InterruptedException {

        action.pause(driver, 5000);
        String statut = driver.findElement(By.xpath(TimelineLocators.Premiere_Publication_Timeline)).getText();
        Assert.assertEquals("Ceci est un test automatisé qui vise à vérifier le fonctionnement correcte de la publication de statut", statut);
        action.pause(driver, 100);

    }
}
