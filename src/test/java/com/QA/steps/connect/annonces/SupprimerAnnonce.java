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
import org.openqa.selenium.support.events.EventFiringWebDriver;

import java.util.List;

public class SupprimerAnnonce {

    private final WebDriver driver = GenerateurDriver.driver;
    private final JavascriptExecutor event =  (JavascriptExecutor)driver;
    private ActionsCommunes action = new ActionsCommunes();
    private static String[] tab1;


    @And("L'utilisateur clique sur  supprimer Annonce")
    public void lUtilisateurCliqueSurSupprimerAnnonce() throws InterruptedException {
        //Remplir le tableau t1  du contenu des annonces avant suppression et creer une chaine de caractere contenant la somme des elements de tab

        List<WebElement> liste=driver.findElements(By.xpath(AnnoncesLocator.List_Annonces));
        int taille=liste.size();
        tab1 =new String[taille];

        for(int i=0;i<taille;i++){
            tab1[i]=liste.get(i).getText();
        }

       action.pause(driver,500);
       driver.findElement(By.xpath(AnnoncesLocator.Bouton_Supprimer_Annonce)).click();



    }



    @And("L'utilisateur clique sur valider suppression")
    public void lUtilisateurCliqueSurValiderSuppression() throws InterruptedException {

        WebElement element = driver.findElement(By.xpath("/html/body/ngb-modal-window/div/div/acc-confirmation-modal/div[3]/button[1]"));
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].click();", element);
        action.pause(driver,1000);


    }



    @Then("vérifier la suppression de l'annonce")
    public void vérifierLaSuppressionDeLAnnonce() throws InterruptedException {
         driver.navigate().refresh();
         action.pause(driver,1000);
 //Remplir le tableau tab  du contenu des annonces apres suppression et creer une chaine de caractere contenant la somme des elements de tab

        List<WebElement> liste=driver.findElements(By.xpath(AnnoncesLocator.List_Annonces));
        int taille=liste.size();
        String[] tab2 = new String[taille];

        for(int i=0;i<taille;i++){
            tab2[i]=liste.get(i).getText();
        }

        int nombreDeDifference=0;
        for(int i=0;i<taille;i++){

            String chaine1 = tab1[i];
            String chaine2 = tab2[i];
            if(!chaine1.equals(chaine2)){
                nombreDeDifference++;
            }

        }


        action.pause(driver,500);

        Assert.assertNotEquals(nombreDeDifference,0);



    }














}
