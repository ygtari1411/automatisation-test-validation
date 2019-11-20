package com.QA.steps.connect.news;


import com.QA.locators.CommonLocators;
import com.QA.locators.NewsLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;


public class CreationNews {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();
    static String Titre_News;


    @And("^L'utilisateur clique sur  ajouter News$")
    public void lUtilisateurCliqueSurAjouterNews() throws InterruptedException {

        driver.findElement(By.xpath(NewsLocators.Bouton_Ajout_News)).click();
        action.pause(driver, 500);
    }


    @Then("^le modal création News s'affiche$")
    public void leModalCréationNewsSAffiche() {

        Assert.assertTrue(driver.findElement(By.xpath(NewsLocators.Titre_Modal_News)).isDisplayed());

    }

    @And ("l'utilisateur remplit le champ titre par {string}")
    public void lUtilisateurRemplitLeChampTitrePar(String arg0) {

        driver.findElement(By.xpath(NewsLocators.Champ_Input_Titre_News)).sendKeys(arg0);
        Titre_News = arg0;
    }

    @And("l utilisateur remplit le champ contenu par {string}")
    public void lUtilisateurRemplitLeChampContenuPar(String arg0) {

        driver.findElement(By.xpath(NewsLocators.Champ_Input_Texte_News)).sendKeys(arg0);
    }

    @And("l'utilisateur selectionne la date actuelle du champ date de publication")
    public void lUtilisateurSelectionneLaDateActuelleDuChampDateDePublication() {

        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        String strDate = dateFormat.format(date);
        driver.findElement(By.xpath(NewsLocators.Champ_Input_Date_Debut_News)).sendKeys(strDate);
    }

    @And("l'utilisateur ajoute une photo dans le champ photo")
    public void lUtilisateurAjouteUnePhotoDansLeChampPhoto() throws InterruptedException {
        driver.findElement(By.id(NewsLocators.Upload_Image_News)).sendKeys(System.getProperty("user.dir") + "/src/test/resources/imagespourtest/imagetest.jpg");
        action.pause(driver, 150);
        WebElement element = driver.findElement(By.xpath(NewsLocators.Bouton_Validation_Upload_Image));
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].click();", element);
    }



    @And("L'utilisateur clique sur enregistrer Création News")
    public void lUtilisateurCliqueSurEnregistrerCréationNews() throws InterruptedException {

        action.pause(driver, 500);
        driver.findElement(By.xpath(NewsLocators.Bouton_Sauvegarde_Creation_News)).click();
    }



    @Then("vérifier la création de la nouvelle news")
    public void vérifierLaCréationDeLaNouvelleNews() throws InterruptedException {
        action.pause(driver, 100);
        String s = driver.findElement(By.xpath(NewsLocators.Premier_Element_Liste_News)).getText();
        Assert.assertEquals(Titre_News, s);
        action.pause(driver, 80);
    }
}

