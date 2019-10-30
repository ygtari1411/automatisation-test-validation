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

import java.util.List;

public class CréationSociété {


    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();



    @When("l'utilisateur clique sur ajouter entreprise")
    public void lUtilisateurCliqueSurAjouterEntreprise() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Ajout_Entreprise)).click();
        action.pause(driver, 100);

    }

    @And("l'utilisateur remplie tous les champs")
    public void lUtilisateurRemplieTousLesChamps() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Champs_Code_Création_Société)).sendKeys("SOC010");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Libellé_Création_Société)).sendKeys("Société de service");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Date_Effet_Création_Société)).sendKeys("01/01/2019");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Langue)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Langue)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Devise)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option47_Liste_Déroulante_Devise)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Adresse_Société)).sendKeys("12 Rue Lac Leman Les Berges du lac 1 Tunisie");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Pays)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Pays)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Liste_Déroulante_Ville)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option23_Liste_Déroulante_Ville)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Sauvegarder_Création_Société)).click();
        action.pause(driver, 100);

    }


    @Then("vérifier l'ajout correct de la société")
    public void vérifierLAjoutCorrectDeLaSociété() throws InterruptedException {

        Assert.assertTrue(driver.findElement(By.xpath(CommonLocators.Notification_Action_Reussie)).getText().contains("succès"));
        action.pause(driver, 100);
        List<WebElement> elements = driver.findElements(By.xpath("//span[contains(@class,'pull-left menu-label')]"));
        for (WebElement element : elements){
            String myText = element.findElement(By.xpath("//span[contains(@class,'pull-left menu-label')]")).getText();
            if (myText.contains("Société de service")) {
                element.click();
                Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Champs_code_Société)).getText().contentEquals("SOC010"));
                action.pause(driver, 100);
                Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Champs_Libellé_Société)).getText().contentEquals("Société de service"));
            }
        }

    }


    @When("l'utilisateur clique pour ajouter des contacts")
    public void lUtilisateurCliquePourAjouterDesContacts() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Ajout_Contact_Société)).click();
        action.pause(driver, 100);

    }


    @And("l'utilisateur remplie tous les champs contacts")
    public void lUtilisateurRemplieTousLesChampsContacts() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Contact_Externe_Société)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Contacts_Société)).sendKeys("François Dutertre");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Liste_Déroulante_Fonctions_Contacts_Société)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option2_Liste_Déroulante_Fonctions_Contacts_Société)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Téléphone_Contacts_Société)).sendKeys("0021698777555");
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Fax_Conatcts_Société)).sendKeys("0021671777555");
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Email_Contacts_Société)).sendKeys("Brunodutertre@gmail.com");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Valider_Ajout_Contact_Société)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Sauvegarder_Edition_Société)).click();
        action.pause(driver, 50);

    }

    @And("l'utilisateur clique pour ajouter des coordonnées bancaires")
    public void lUtilisateurCliquePourAjouterDesCoordonnéesBancaires() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Ajout_Coordonnées_Bancaire)).click();
        action.pause(driver, 100);

    }

    @And("l'utilisateur remplie tous les champs coordonnées bancaires")
    public void lUtilisateurRemplieTousLesChampsCoordonnéesBancaires() throws InterruptedException {

        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_Date_Effet_Coordonnées_Bancaire)).sendKeys("01/01/2019");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Liste_Déroulante_Pays_Coordonnées_Bancaire)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Pays_Coordonnées_Bancaire)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Liste_Déroulante_Mode_de_paiement_Coordonnées_Bancaire)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option1_Liste_Déroulante_Mode_de_Paiement_Coordonnées_Bancaire)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Liste_Déroulante_Devises_Coordonnées_Bancaire)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option47_Liste_Déroulante_Devises_Coordonnées_Bancaire)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Liste_Déroulante_Libellé_Banque_Coordonnées_Bancaire)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option3_Liste_Déroulante_Libellé_Banque_Coordonnées_Bancaire)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Liste_Déroulante_Libellé_Agence_Coordonnées_Bancaire)).click();
        action.pause(driver, 50);
        driver.findElement(By.xpath(ReferentielsLocators.Option5_Liste_Déroulante_Libellé_Agence_Coordonnées_Bancaire)).click();
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_RIB_Coordonnées_Bancaire)).sendKeys("56485365124785462369");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_BIC_Coordonnées_Bancaire)).sendKeys("56265454654");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Champs_Input_IBAN_Cooredonnées_Bancaire)).sendKeys("35465454654");
        action.pause(driver, 100);
        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Valider_Ajout_Coordonnées_Bancaire)).click();


    }

    @Then("vérifier l'enregistrement correct des ajouts")
    public void vérifierLEnregistrementCorrectDesAjouts()  {

        driver.findElement(By.xpath(ReferentielsLocators.Bouton_Sauvegarder_Edition_Société)).click();
        WebElement modules = (new WebDriverWait(driver, 5))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(CommonLocators.Notification_Action_Reussie)));
        Assert.assertTrue(driver.findElement(By.xpath(CommonLocators.Notification_Action_Reussie)).getText().contains("succès"));
        Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Champs_RIB_Coordonnées_Bancaire)).getText().contains("56485365124785462369"));
        Assert.assertTrue(driver.findElement(By.xpath(ReferentielsLocators.Champs_Contacts_Contacts_Société)).getText().contains("François Dutertre"));
    }
}
