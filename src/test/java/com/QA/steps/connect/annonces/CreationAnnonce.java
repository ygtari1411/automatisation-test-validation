package com.QA.steps.connect.annonces;

import com.QA.locators.CommonLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import com.QA.locators.AnnoncesLocator;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static com.QA.locators.AnnoncesLocator.Champ_Input_Texte_Annonces_After_Click;


public class CreationAnnonce {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();

    @And("L'utilisateur clique sur  ajouter Annonce")
    public void lUtilisateurCliqueSurAjouterAnnonce() {
        driver.findElement(By.xpath(AnnoncesLocator.Bouton_Ajouter_Annonces)).click();
    }


    @When("L'utilisateur rempli les champs de de la création annonce")
    public void lUtilisateurRempliLesChampsDeDeLaCréationAnnonce()  {


        driver.findElement(By.name(AnnoncesLocator.Champ_Input_Nom_Annonce)).sendKeys("Test Automatique Publication Annonce");
        driver.findElement(By.cssSelector(AnnoncesLocator.Bouton_Liste_Choix_Type)).click();
        driver.findElement(By.cssSelector(AnnoncesLocator.Option1_Liste_Choix_Type)).click();
        driver.findElement(By.cssSelector(AnnoncesLocator.Champ_Input_Texte_Annonces)).click();
        driver.findElement(By.cssSelector(Champ_Input_Texte_Annonces_After_Click)).sendKeys("Ceci est un test automatique de la creation d'une annonce");
        driver.findElement(By.xpath(AnnoncesLocator.Upload_Image_Annonce)).sendKeys(System.getProperty("user.dir") + "/src/test/resources/imagespourtest/imagetest.jpg");
        driver.findElement(By.xpath(AnnoncesLocator.Bouton_Valider_Image)).click();


    }




    @And("L'utilisateur clique sur valider creer annonce")
    public void lUtilisateurCliqueSurValiderCreerAnnonce() {

        WebElement element = driver.findElement(By.xpath(AnnoncesLocator.Bouton_Valider_Ajouter_Annonces));
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].click();", element);


    }






    @Then("vérifier la création de la nouvelle annonce")
    public void vérifierLaCréationDeLaNouvelleAnnonce() throws InterruptedException {

        WebElement myDynamicElement = (new WebDriverWait(driver, 10))
                .until(ExpectedConditions.presenceOfElementLocated(By.xpath(CommonLocators.Notification_Action_Reussie)));
        Assert.assertTrue(driver.findElement(By.xpath(CommonLocators.Notification_Action_Reussie)).getText().contains("succès"));

        action.pause(driver,500);

        Assert.assertTrue(driver.findElement(By.xpath(AnnoncesLocator.Premiere_Annonce)).getText().contains("Ceci est un test automatique de la creation d'une annonce"));


    }








}
