package com.QA.steps;

import com.QA.base.streams;
import com.QA.locators.*;
import com.QA.utilités.XMLUtilities;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


import java.lang.reflect.Field;
import java.util.*;

import static com.QA.base.TestGenerateurDriverInit.ListeGlobaleLocators;

public class EtapesCommunes {

    private final WebDriver driver = GenerateurDriver.driver;
    private static final Properties reader;
    private ActionsCommunes action = new ActionsCommunes();
    public static List<String> listededonnees = new ArrayList<>();

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
        Assert.assertTrue(driver.findElements( By.cssSelector("a[class='list-group-item'][routerlink='/logout']")).size() != 0);
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


    @And("l utilisateur se deconnecte")
    public void lUtilisateurSeDeconnecte() {

        driver.manage().deleteAllCookies();
        driver.navigate().refresh();
    }

    @And("l utilisateur clique sur {string}")
    public void lUtilisateurCliqueSur(String bouton) throws IllegalAccessException {
        String locator = "vide";
        for (List<Field> f : ListeGlobaleLocators) {
            for (Field x : f) {
                if (x.getName().equals(bouton)) {
                    locator = (String) x.get(x);
                    break;
                }
            }
            if (!locator.equals("vide")) {
                break;
            }
        }
        if (bouton.contains("JS_")) {
            WebElement element = driver.findElement(By.xpath(locator));
            JavascriptExecutor executor = (JavascriptExecutor) driver;
            executor.executeScript("arguments[0].click();", element);
        }
        else if (Character.toString(locator.charAt(0)).contains("/")) {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.xpath(locator)));
            driver.findElement(By.xpath(locator)).click();
        } else if (locator.contains("[") || Character.toString(locator.charAt(0)).contains(".")) {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.cssSelector(locator)));
            driver.findElement(By.cssSelector(locator)).click();
        } else {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.id(locator)));
            driver.findElement(By.id(locator)).click();
        }
    }


    @And("l utilisateur saisit {string} dans le champs {string}")
    public void lUtilisateurSaisitDansLeChamps(String texteSaisi, String Champ) throws IllegalAccessException {
        String locator = "vide";
        listededonnees.add(Champ);
        listededonnees.add(texteSaisi);
        for (List<Field> f : ListeGlobaleLocators) {
            for (Field x : f) {
                if (x.getName().equals(Champ)) {
                    locator = (String) x.get(x);
                    break;
                }
            }
            if (!locator.equals("vide")) {
                break;
            }
        }
        if (Character.toString(locator.charAt(0)).contains("/")) {
            driver.findElement(By.xpath(locator)).sendKeys(texteSaisi);
        } else if (locator.contains("[") || Character.toString(locator.charAt(0)).contains(".")) {
            driver.findElement(By.cssSelector(locator)).sendKeys(texteSaisi);
        } else {
            driver.findElement(By.id(locator)).sendKeys(texteSaisi);
        }

    }


    @And("l utilisateur selectionne {string} dans la liste deroulante {string}")
    public void lutilisateurSelectionneDansLaListeDeroulante(String optionlistederoulante, String listederoulante) throws IllegalAccessException, InterruptedException {
        String locator = "vide";
        for (List<Field> f : ListeGlobaleLocators) {
            for (Field x : f) {
                if (x.getName().equals(listederoulante)) {
                    locator = (String) x.get(x);
                    break;
                }
            }
            if (!locator.equals("vide")) {
                break;
            }
        }
        if (locator.contains("JS_")) {
            WebElement element = driver.findElement(By.xpath(locator));
            JavascriptExecutor executor = (JavascriptExecutor) driver;
            executor.executeScript("arguments[0].click();", element);
        }
        else if (Character.toString(locator.charAt(0)).contains("/")) {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.xpath(locator)));
            driver.findElement(By.xpath(locator)).click();
        } else if (locator.contains("[") || Character.toString(locator.charAt(0)).contains(".")) {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.cssSelector(locator)));
            driver.findElement(By.cssSelector(locator)).click();
        }  else {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.id(locator)));
            driver.findElement(By.id(locator)).click();
        }

        action.pause(driver, 500);

        driver.findElement(By.cssSelector("input[class='form-control ui-select-search']")).sendKeys(optionlistederoulante);

        action.pause(driver, 500);

        WebElement element = driver.findElement(By.cssSelector("div[class='ui-select-choices-row active']"));
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].click();", element);

    }


    @And("l utilisateur selectionne {string} dans la liste {string}")
    public void lUtilisateurSelectionneDansLaListe(String Optiondelaliste, String liste) throws IllegalAccessException {

        String locator = "vide";
        for (List<Field> f : ListeGlobaleLocators) {
            for (Field x : f) {
                if (x.getName().equals(Optiondelaliste)) {
                    locator = (String) x.get(x);
                    break;
                }
            }
            if (!locator.equals("vide")) {
                break;
            }
        }
        if (locator.contains("JS_")) {
            WebElement element = driver.findElement(By.xpath(locator));
            JavascriptExecutor executor = (JavascriptExecutor) driver;
            executor.executeScript("arguments[0].click();", element);
        }
        else if (Character.toString(locator.charAt(0)).contains("/")) {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.xpath(locator)));
            driver.findElement(By.xpath(locator)).click();
        } else if (locator.contains("[") || Character.toString(locator.charAt(0)).contains(".")) {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.cssSelector(locator)));
            driver.findElement(By.cssSelector(locator)).click();
        }  else {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.id(locator)));
            driver.findElement(By.id(locator)).click();
        }

    }


    @Then("vérifier que le message {string} s affiche")
    public void vérifierQueLeMessageSAffiche(String textenotification) {

        WebElement modules = (new WebDriverWait(driver, 7))
                .until(ExpectedConditions.presenceOfElementLocated(By.cssSelector(CommonLocators.Notification_Simple)));
        Assert.assertTrue(driver.findElement(By.cssSelector(CommonLocators.Notification_Simple)).getText().contains(textenotification));

    }


}

