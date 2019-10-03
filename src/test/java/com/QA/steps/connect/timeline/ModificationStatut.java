package com.QA.steps.connect.timeline;

import com.QA.locators.TimelineLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class ModificationStatut {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();
    private String statut ;


    @And("l'utilsateur clique pour modifier le statut")
    public void lUtilsateurCliquePourModifierLeStatut() throws InterruptedException {

        driver.findElement(By.xpath(TimelineLocators.Bouton_Menu_Modif_Supp_Statut)).click();
        driver.findElement(By.xpath(TimelineLocators.Bouton_Modif_Statut )).click();
        action.pause(driver,3000);

    }

    @And("L'utilisateur modifie le statut déja publié")
    public void lUtilisateurModifieLeStatutDéjaPublié() throws InterruptedException {

        driver.findElement(By.xpath(TimelineLocators.Champ_Input_Modification_Statut)).clear();
        driver.findElement(By.xpath(TimelineLocators.Champ_Input_Modification_Statut)).sendKeys("Mise à jour");
        action.pause(driver,3000);

    }

    @And("L'utilisateur clique sur le bouton valider")
    public void lUtilisateurCliqueSurLeBoutonValider() {

        driver.findElement(By.xpath(TimelineLocators.Bouton_Publier_Statut )).click();
        driver.navigate().refresh();

    }

    @Then("verifier que la modification du statut est enregistrée")
    public void verifierQueLaModificationDuStatutEstEnregistrée() {


        String statut = driver.findElement(By.xpath(TimelineLocators.Premiere_Publication_Timeline)).getText();
        Assert.assertEquals("Mise à jour", statut);

    }

}
