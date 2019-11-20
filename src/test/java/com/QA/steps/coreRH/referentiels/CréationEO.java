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
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


public class CréationEO {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();

    @When("l'utilisateur clique pour ajouter une Entité Organisationnelle")
    public void lUtilisateurCliquePourAjouterUneEntitéOrganisationnelle() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Rubrique_Entité_Organisationnelle)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Ajout_Entité_Organisationnelle)).click();

    }

    @And("l'utilisateur remplie tous les champs ajout Entité Organisationnelle")
    public void lUtilisateurRemplieTousLesChampsAjoutEntitéOrganisationnelle() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Code_Entité_Organisationnelle)).sendKeys("SOCENT01");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Libellé_Entité_Organisationnelle)).sendKeys("Entité 1");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Date_Effet_Entité_Organisationnelle)).sendKeys("01/01/2019");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Statut_Entité_Organisationnelle)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Statut_Entité_Organisationnelle)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Société_Rattachement_Entité_Organisationnelle)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Société_Rattachement_Entité_Organisationnelle)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Type_Entité_Organisationnelle)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Type_Entité_Organisationnelle)).click();
        action.pause(driver, 100);
    }

    @And("l'utilisateur valide la création de EO")
    public void lUtilisateurValideLaCréationDeEO() {

        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Validation_Création_EO)).click();
        WebElement modules = (new WebDriverWait(driver, 5))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(CommonLocators.Notification_Simple)));
        Assert.assertTrue(driver.findElement(By.xpath(CommonLocators.Notification_Simple)).getText().contains("succès"));
    }


    @And("l'utilisateur modifie les informations de EO et clique enregistrer")
    public void lUtilisateurModifieLesInformationsDeEOEtCliqueEnregistrer() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Adresse_Entité_Organisationnelle)).sendKeys("25 Rue de carthage Les Berges du lac 2 Tunisie");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Pays_Entité_Organisationnelle)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Pays_Entité_Organisationnlle)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Ville_Entité_Organisationnelle)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Option23_Liste_Déroulante_Ville_Entité_Organisationnelle)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Code_Postal_Entité_Organisationnelle)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Code_Postal_Entité_Organisationnelle)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Adresse_Mail_Entité_Organisationnelle)).sendKeys("service@gmail.com");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Enregistrer_Modification_Entité_Organisationnelle)).click();
    }

    @Then("vérifier la sauvegarde correcte de l'Entité Organisationnelle")
    public void vérifierLaSauvegardeCorrecteDeLEntitéOrganisationnelle() {


        WebElement modules = (new WebDriverWait(driver, 10))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(CommonLocators.Notification_Simple)));
        Assert.assertTrue(driver.findElement(By.xpath(CommonLocators.Notification_Simple)).getText().contains("succès"));
        driver.navigate().refresh();
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Recherche_Entité_Organisationnelle)).sendKeys("Entité 1");
        Boolean b = (new WebDriverWait(driver, 10))
                .until(ExpectedConditions.attributeContains(By.xpath(ReferentielsLocators.Champs_Input_Libellé_Entité_Organisationnelle_Existante), "value", "Entité 1"));
        Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Adresse_Entité_Organisationnelle)).getAttribute("value").contains("25 Rue de carthage Les Berges du lac 2 Tunisie"));

    }


}
