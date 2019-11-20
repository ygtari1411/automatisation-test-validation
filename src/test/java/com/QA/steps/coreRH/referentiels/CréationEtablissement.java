package com.QA.steps.coreRH.referentiels;

import com.QA.locators.CommonLocators;
import com.QA.locators.ReferentielsLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.awt.*;
import java.awt.event.KeyEvent;


public class CréationEtablissement {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();

    @When("l'utilisateur clique pour ajouter un etablissement")
    public void lUtilisateurCliquePourAjouterUnEtablissement() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Rubrique_Etablissement)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Ajout_Etablissement)).click();
        action.pause(driver, 100);
    }


    @And("l'utilisateur remplit tous les champs ajout établissement")
    public void lUtilisateurRemplitTousLesChampsAjoutÉtablissement() throws InterruptedException, AWTException {

        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Code_Etablissement)).sendKeys("SOCETAB01");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Libellé_Etablissement)).sendKeys("Etablissement principal");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Date_Effet_Etablissement)).sendKeys("01/01/2019");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Adresse_Etablissement)).sendKeys("12 Rue Lac Leman Les Berges du lac 1 Tunisie");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Liste_Déroulante_Pays_Etablissement)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Pays_Etablissement)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Ville_Etablissement)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option23_Liste_Déroulante_Ville_Etablissement)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Liste_Déroulante_Rattachement_Etablissement)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Société_Rattachement_Etablissement)).sendKeys("Société de service");
        action.pause(driver, 150);
        Robot robot = new Robot();
        robot.keyPress(KeyEvent.VK_ENTER);
        action.pause(driver, 20);
        robot.keyRelease(KeyEvent.VK_ENTER);
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Checkbox_Etablissement_Principal)).click();
        if (driver.findElement(By.xpath(ReferentielsLocators.Champs_Société_Rattachement_Etablissement)).getText().contains("Sélectionner la société")) {
            driver.findElement(By.xpath(ReferentielsLocators.Liste_Déroulante_Rattachement_Etablissement)).click();
            action.pause(driver, 50);
            driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Rattachement_Etablissment)).click();
        }
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Enregistrer_Création_Etablissement)).click();
        action.pause(driver, 100);
        Assert.assertTrue(driver.findElement(By.xpath(CommonLocators.Notification_Simple)).getText().contains("succès"));
    }


    @Then("vérifier l'ajout correct du nouvel établissement")
    public void vérifierLAjoutCorrectDuNouvelÉtablissement() {
        driver.navigate().refresh();
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Recherche_Etablissement)).sendKeys("Etablissement Principal");
        Boolean modules = (new WebDriverWait(driver, 5))
                .until(ExpectedConditions.attributeContains(driver.findElement(By.xpath(ReferentielsLocators.Champs_Code_Etablissement)), "value", "SOCETAB01"));
        Assert.assertEquals("Etablissement principal", driver.findElement(By.xpath(ReferentielsLocators.Champs_Libellé_Etablissement)).getAttribute("value"));
    }
}
