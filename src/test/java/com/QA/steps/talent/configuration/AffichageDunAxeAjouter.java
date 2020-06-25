package com.QA.steps.talent.configuration;

import com.QA.locators.ConfigurationTalentLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class AffichageDunAxeAjouter {

    private static final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();


    @When("l utilisateur clique sur Afficher_option_conf_Axe du dernier axe ajouter")
    public void lUtilisateurCliqueSurAfficher_option_conf_AxeDuDernierAxeAjouter() throws InterruptedException {

        //Récuper l'indice du dernier élément



        List<WebElement> list = driver.findElements(By.xpath(ConfigurationTalentLocators.Liste_Axe_Talent));
        int indice =list.size();


        //Cliquer sur Afficher_option_conf_Axe du dernier élément ajouter

        String beforeXpath="/html/body/app-root/app-layout/div/section/div/acc-hr-talent-component/acc-hr-talent-configuration/div[2]/div[2]/section/acc-evaluation-configuration-axis/div[2]/div/section/div[2]/div/div[1]/acc-evaluation-configuration-axis-table/table/tbody/tr[";
        String afterXpath="]/td[2]/div/a";
        String actualXpath=beforeXpath+indice+afterXpath;

         driver.findElement(By.xpath(actualXpath)).click();

         action.pause(driver, 200);


        beforeXpath="body > app-root > app-layout > div > section > div > acc-hr-talent-component > acc-hr-talent-configuration > div.row.content-interne > div.col-sm-10.col-md-10.col-xs-12.text-left.relative > section > acc-evaluation-configuration-axis > div:nth-child(2) > div > section > div.animated.fadeInDown > div > div.tab-pane.fade.active.in > acc-evaluation-configuration-axis-table > table > tbody > tr:nth-child(";
        afterXpath=") > td.text-right.dropup > div > ul > li:nth-child(2) > a";


        actualXpath=beforeXpath+indice+afterXpath;

        action.pause(driver, 200);

        driver.findElement(By.cssSelector(actualXpath)).click();





    }


    @Then("vérifier que le champs Libelle_Ajout_Axe_Option est {string}")
    public void vérifierQueLeChampsLibelle_Ajout_Axe_OptionEst(String libelle) {

        String resultat=driver.findElement(By.xpath(ConfigurationTalentLocators.Libelle_Ajout_Axe_Option)).getAttribute("value");
        Assert.assertEquals(libelle,resultat);

    }


}
