package com.QA.steps.talent.configuration;

import com.QA.locators.ConfigurationTalentLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class AffichageDunObjectifStrategiqueAjoute {


    private static final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();


    @When("l utilisateur clique sur Afficher_option_conf_Obj_strategique du dernier objectif ajouter")
    public void lUtilisateurCliqueSurAfficher_option_conf_Obj_strategiqueDuDernierObjectifAjouter() throws InterruptedException {

        //Récuper l'indice du dernier élément


        List<WebElement> list = driver.findElements(By.xpath(ConfigurationTalentLocators.List_Objectif_Stategique));
        int indice =list.size();


        //Cliquer sur Afficher_option_conf_Obj_strategique du dernier élément ajouter

        String beforeXpath="/html/body/app-root/app-layout/div/section/div/acc-hr-talent-component/acc-hr-talent-configuration/div[2]/div[2]/section/acc-evaluation-configuration-strategictarget/div[2]/section/div[2]/div/div[1]/acc-evaluation-configuration-strategictarget-table/table/tbody/tr[";
        String afterXpath="]/td[3]/div/a";
        String actualXpath=beforeXpath+indice+afterXpath;

        driver.findElement(By.xpath(actualXpath)).click();

        action.pause(driver, 200);




        beforeXpath="body > app-root > app-layout > div > section > div > acc-hr-talent-component > acc-hr-talent-configuration > div.row.content-interne > div.col-sm-10.col-md-10.col-xs-12.text-left.relative > section > acc-evaluation-configuration-strategictarget > div:nth-child(3) > section > div.animated.fadeInDown > div > div.tab-pane.fade.active.in > acc-evaluation-configuration-strategictarget-table > table > tbody > tr:nth-child(";
        afterXpath=") > td.text-right.dropup > div > ul > li:nth-child(2) > a";


        actualXpath=beforeXpath+indice+afterXpath;

        action.pause(driver, 200);

        driver.findElement(By.cssSelector(actualXpath)).click();




    }


    @Then("verifier que le champs Libelle_Ajout_Obj_strategique est {string}")
    public void verifierQueLeChampsLibelle_Ajout_Obj_strategiqueEst(String libelle) {

        String resultat=driver.findElement(By.xpath(ConfigurationTalentLocators.Libelle_Ajout_Obj_strategique)).getAttribute("value");
        Assert.assertEquals(libelle,resultat);

    }


    @And("verifier que le champs Description_Ajout_Obj_strategique est {string}")
    public void verifierQueLeChampsDescription_Ajout_Obj_strategiqueEst(String description) {

        String resultat=driver.findElement(By.xpath(ConfigurationTalentLocators.Description_Ajout_Obj_strategique)).getAttribute("value");
        Assert.assertEquals(description,resultat);

    }




}
