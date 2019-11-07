package com.QA.steps.connect.annonces;

import com.QA.locators.AnnoncesLocator;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ModificationAnnonce {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();

    @And("L'utilisateur clique sur  modifier Annonce")
    public void lUtilisateurCliqueSurModifierAnnonce() {

        driver.findElement(By.xpath(AnnoncesLocator.Bouton_Modifier_Annonce)).click();

    }

    @And("L'utilisateur modifie le contenu de l annonce")
    public void lUtilisateurModifieLeContenuDeLAnnonce() {
        driver.findElement(By.cssSelector(AnnoncesLocator.Champ_Input_Texte_Annonces_After_Click)).clear();
        driver.findElement(By.cssSelector(AnnoncesLocator.Champ_Input_Texte_Annonces_After_Click)).sendKeys("Ceci est un test automatique Modification Annonce");
    }


    @And("L'utilisateur clique sur valider modifier annonce")
    public void lUtilisateurCliqueSurValiderModifierAnnonce() throws InterruptedException {
        WebElement element = driver.findElement(By.xpath(AnnoncesLocator.Bouton_Valider_Ajouter_Annonces));
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].click();", element);
        Boolean modules = (new WebDriverWait(driver, 5))
                .until(ExpectedConditions.invisibilityOfElementWithText(By.xpath(AnnoncesLocator.Premiere_Annonce),"Test Automatique Publication Annonce"));
        action.pause(driver, 2000);
    }


    @Then("vérifier la modification de l'annonce")
    public void vérifierLaModificationDeLAnnonce() {

        Assert.assertEquals("Ceci est un test automatique Modification Annonce",driver.findElement(By.xpath(AnnoncesLocator.Premiere_Annonce)).getText() );

    }



}
