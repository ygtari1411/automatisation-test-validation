package com.QA.steps;

import com.QA.base.streams;
import com.QA.locators.CommonLocators;
import com.QA.locators.NewsLocators;
import com.QA.locators.ReferentielsLocators;
import com.QA.utilités.XMLUtilities;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


import java.util.Properties;

public class EtapesCommunes {

    private final WebDriver driver = GenerateurDriver.driver;
    private static final Properties reader;
    private ActionsCommunes action = new ActionsCommunes();

    static {

        reader = streams.readers();
    }


    @Given("le navigateur est ouvert et la page d'acceuil est affichée")
    public void leNavigateurEstOuvertEtLaPageDAcceuilEstAffichée() {

        driver.get(reader.getProperty("testsiteurl"));
    }

    @And("l'utilisateur {string} est connecté")
    public void lUtilisateurEstConnecté(String utilisateur) throws Exception {

        XMLUtilities utilities = new XMLUtilities();
        driver.findElement(By.id(CommonLocators.Login_Champ_Username)).sendKeys(utilisateur);
        action.pause(driver, 500);
        driver.findElement(By.id(CommonLocators.Login_Champ_password)).sendKeys((utilities.findUser(utilisateur).getPassword()));
        action.pause(driver, 500);
        driver.findElement(By.xpath(CommonLocators.Login_Bouton_connexion)).click();

    }

    @When("l'utilisateur clique sur espace-RH")
    public void lUtilisateurCliqueSurEspaceRH() throws InterruptedException {

        driver.findElement(By.xpath(CommonLocators.Bouton_Role_RH)).click();
        action.pause(driver, 200);
        driver.findElement(By.xpath(CommonLocators.Bouton_Menu_Etendu)).click();

    }

    @And("l'utilisateur clique sur le module Connect")
    public void lUtilisateurCliqueSurLeModuleConnect() throws InterruptedException {

        driver.findElement(By.xpath(CommonLocators.Bouton_Module_Connect)).click();
        action.pause(driver, 200);
    }


    @And("l'utilisateur clique sur News")
    public void lUtilisateurCliqueSurNews() throws InterruptedException {

        driver.findElement(By.xpath(NewsLocators.Bouton_Module_News)).click();
        action.pause(driver, 200);

    }

    @And("l'utilisateur clique sur le module coreRH")
    public void lUtilisateurCliqueSurLeModuleCoreRH() throws InterruptedException {

        driver.findElement(By.xpath(CommonLocators.Bouton_Module_CoreRH)).click();
        action.pause(driver, 200);

    }


    @And("l'utilisateur clique sur Référentiels")
    public void lUtilisateurCliqueSurRéférentiels() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Module_Referentiels)).click();
        action.pause(driver, 200);
    }

    @Then("vérifier l'affichage correct des rubriques")
    public void vérifierLAffichageCorrectDesRubriques() {

        WebElement modules = (new WebDriverWait(driver, 5))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(ReferentielsLocators.Bouton_Rubrique_Société)));
        Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Bouton_Rubrique_Société)).isDisplayed());
        Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Bouton_Rubrique_Etablissemnt)).isDisplayed());
        Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Bouton_Rubrique_Entité_Organisationnelle)).isDisplayed());
        Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Bouton_Rubrique_Emplois)).isDisplayed());
        Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Bouton_Rubrique_Postes)).isDisplayed());

    }

    @And("l'utilisateur clique sur portal")
    public void lUtilisateurCliqueSurPortal() {
        driver.findElement(By.xpath(CommonLocators.Bouton_Portal)).click();
    }



    @And("wait {int}")
    public void wait(int arg0) throws InterruptedException {
        synchronized (driver) {
            driver.wait(arg0);
        }

    }


    @And("l'utilisateur clique sur Annonces")
    public void lUtilisateurCliqueSurAnnonces() {

        driver.findElement(By.xpath(CommonLocators.Bouton_Annonce)).click();
    }


}

