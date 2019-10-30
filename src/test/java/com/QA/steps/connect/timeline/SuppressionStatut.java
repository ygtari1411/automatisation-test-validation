package com.QA.steps.connect.timeline;

import com.QA.locators.TimelineLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class SuppressionStatut {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();


    @And("l'utilsateur clique pour supprimer le statut")
    public void lUtilsateurCliquePourSupprimerLeStatut() throws InterruptedException {

        WebElement modules = (new WebDriverWait(driver, 10))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(TimelineLocators.Premiere_Publication_Timeline)));
        driver.findElement(By.cssSelector(TimelineLocators.Bouton_Menu_Modif_Supp_Statut)).click();
        action.pause(driver, 3000);
        driver.findElement(By.linkText(TimelineLocators.Bouton_Supprimer_Statut)).click();
        action.pause(driver, 3000);
    }

    @And("L'utilisateur clique sur le bouton valider suppression")
    public void lUtilisateurCliqueSurLeBoutonValiderSuppression() throws InterruptedException {

        driver.findElement(By.cssSelector(TimelineLocators.Bouton_Valider_Suppression_Statut)).click();
        Boolean modules = (new WebDriverWait(driver, 8))
                .until(ExpectedConditions.invisibilityOfElementWithText(By.xpath(TimelineLocators.Premiere_Publication_Timeline), "Ceci est un test automatisé qui vise à vérifier le fonctionnement correcte de la publication de statut"));

    }


    @Then("verifier que la suppression du statut a été effectuée")
    public void verifierQueLaSuppressionDuStatutAÉtéEffectuée() {

        String statut = driver.findElement(By.xpath(TimelineLocators.Premiere_Publication_Timeline)).getText();
        Assert.assertNotEquals("Ceci est un test automatisé qui vise à vérifier le fonctionnement correcte de la publication de statut", statut);

    }


}
