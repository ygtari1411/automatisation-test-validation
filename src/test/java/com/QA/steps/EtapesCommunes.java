package com.QA.steps;

import com.QA.base.streams;
import com.QA.locators.*;
import com.QA.utilités.XMLUtilities;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.log4j.Logger;
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

    private static final Logger logger = Logger.getLogger(EtapesCommunes.class);
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
        logger.info(" Ouverture de l'environnement : " + reader.getProperty("testsiteurl"));
    }

    @And("l'utilisateur {string} est connecté")
    public void lUtilisateurEstConnecté(String utilisateur) throws Exception {

        XMLUtilities utilities = new XMLUtilities();
        driver.findElement(By.id(CommonLocators.Login_Champ_Username)).sendKeys(utilisateur);
        action.pause(driver, 500);
        driver.findElement(By.id(CommonLocators.Login_Champ_password)).sendKeys((utilities.findUser(utilisateur).getPassword()));
        action.pause(driver, 500);
        driver.findElement(By.xpath(CommonLocators.Login_Bouton_connexion)).click();
        Assert.assertTrue(driver.findElements(By.cssSelector("a[class='list-group-item'][routerlink='/logout']")).size() != 0);
        logger.info("Connexion avec le user : " + utilisateur);
    }

    @When("l'utilisateur clique sur espace-RH")
    public void lUtilisateurCliqueSurEspaceRH() throws InterruptedException {

        driver.findElement(By.xpath(CommonLocators.Bouton_Role_RH)).click();
        action.pause(driver, 200);
        driver.findElement(By.xpath(CommonLocators.Bouton_Menu_Etendu)).click();
        logger.info("Changement de role vers espace-RH");
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


    @And("l'utilisateur clique sur portal")
    public void lUtilisateurCliqueSurPortal() {
        driver.findElement(By.xpath(CommonLocators.Bouton_Portal)).click();
    }


    @And("wait {int}")
    public void wait(int arg0) throws InterruptedException {
        synchronized (driver) {
            driver.wait(arg0);
        }
        logger.info("Pause de " + arg0 / 1000 + " secondes");
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
        logger.info("L'utilisateur clique sur : " + bouton);
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
        } else if (Character.toString(locator.charAt(0)).contains("/")) {
            WebElement modules = (new WebDriverWait(driver, 10)).until(ExpectedConditions.elementToBeClickable(By.xpath(locator)));
            driver.findElement(By.xpath(locator)).click();
        } else if (locator.contains("[") || Character.toString(locator.charAt(0)).contains(".")) {
            WebElement modules = (new WebDriverWait(driver, 10)).until(ExpectedConditions.elementToBeClickable(By.cssSelector(locator)));
            driver.findElement(By.cssSelector(locator)).click();
        } else {
            WebElement modules = (new WebDriverWait(driver, 10)).until(ExpectedConditions.elementToBeClickable(By.id(locator)));
            driver.findElement(By.id(locator)).click();
        }

    }


    @And("l utilisateur saisit {string} dans le champs {string}")
    public void lUtilisateurSaisitDansLeChamps(String texteSaisi, String Champ) throws IllegalAccessException {
        logger.info("L'utilisateur saisit : " + texteSaisi + " dans le champ " + Champ);
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
        logger.info("L'utilisateur selectionne : " + optionlistederoulante + " dans la liste déroulante : " + listederoulante);
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
        } else if (Character.toString(locator.charAt(0)).contains("/")) {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.xpath(locator)));
            driver.findElement(By.xpath(locator)).click();
        } else if (locator.contains("[") || Character.toString(locator.charAt(0)).contains(".")) {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.cssSelector(locator)));
            driver.findElement(By.cssSelector(locator)).click();
        } else {
            WebElement modules = (new WebDriverWait(driver, 7)).until(ExpectedConditions.elementToBeClickable(By.id(locator)));
            driver.findElement(By.id(locator)).click();
        }

        locator = "vide";
        action.pause(driver, 500);

        String inputlistederoulante = listederoulante + "_IL";
        for (List<Field> f : ListeGlobaleLocators) {
            for (Field x : f) {
                if (x.getName().equals(inputlistederoulante)) {
                    locator = (String) x.get(x);
                    break;
                }
            }
            if (!locator.equals("vide")) {
                break;
            }
        }
        if (Character.toString(locator.charAt(0)).contains("/")) {
            driver.findElement(By.xpath(locator)).sendKeys(optionlistederoulante);
        } else if (locator.contains("[") || Character.toString(locator.charAt(0)).contains(".")) {
            driver.findElement(By.cssSelector(locator)).sendKeys(optionlistederoulante);
        } else {
            driver.findElement(By.id(locator)).sendKeys(optionlistederoulante);
        }
        locator = "vide";
        action.pause(driver, 500);

        String cliquelistederoulante = listederoulante + "_CL";
        WebElement element = null;
        for (List<Field> f : ListeGlobaleLocators) {
            for (Field x : f) {
                if (x.getName().equals(cliquelistederoulante)) {
                    locator = (String) x.get(x);
                    break;
                }
            }
            if (!locator.equals("vide")) {
                break;
            }
        }
        if (Character.toString(locator.charAt(0)).contains("/")) {
            element = driver.findElement(By.xpath(locator));
        } else if (locator.contains("[") || Character.toString(locator.charAt(0)).contains(".")) {
            element = driver.findElement(By.cssSelector(locator));
        } else {
            element = driver.findElement(By.id(locator));
        }
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].click();", element);

    }


    @And("l utilisateur selectionne {string} dans la liste {string}")
    public void lUtilisateurSelectionneDansLaListe(String Optiondelaliste, String liste) throws IllegalAccessException {
        logger.info("L'utilisateur selectionne : " + Optiondelaliste + " dans la liste : " + liste);
        String locator = "vide";
        List<WebElement> L;
        for (List<Field> f : ListeGlobaleLocators) {
            for (Field x : f) {
                if (x.getName().equals(liste)) {
                    locator = (String) x.get(x);
                    break;
                }
            }
            if (!locator.equals("vide")) {
                break;
            }
        }

        if (Character.toString(locator.charAt(0)).contains("/")) {
            L = driver.findElements(By.xpath(locator));
        } else if (locator.contains("[") || Character.toString(locator.charAt(0)).contains(".")) {
            L = driver.findElements(By.cssSelector(locator));
        } else {
            L = driver.findElements(By.id(locator));
        }

        for (WebElement x : L) {
            if (x.getText().equals(Optiondelaliste)) {
                x.click();
                break;
            }

        }

    }

    @Then("vérifier que le message {string} s affiche")
    public void vérifierQueLeMessageSAffiche(String textenotification) {
        logger.info("Vérification de l'affichage du message : " + textenotification);
        WebElement modules = (new WebDriverWait(driver, 10))
                .until(ExpectedConditions.presenceOfElementLocated(By.cssSelector(CommonLocators.Notification_Simple)));
        Assert.assertTrue(driver.findElement(By.cssSelector(CommonLocators.Notification_Simple)).getText().contains(textenotification));

    }

    @And("vérifier que le titre du modal est {string} et le texte du corps du modal est {string}")
    public void vérifierQueLeTitreDuModalEstEtLeTexteDuCorpsDuModalEst(String titremodal , String textecorpsmodal) {

        Assert.assertEquals(driver.findElement(By.cssSelector("h4[class='modal-title']")).getAttribute("innerText"), titremodal);
        Assert.assertEquals(driver.findElement(By.cssSelector("text-center")).getAttribute("innerText"),textecorpsmodal);


    }
}

