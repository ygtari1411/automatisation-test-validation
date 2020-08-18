package com.QA.steps.talent.configuration;

import com.QA.locators.ConfigurationTalentLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import com.fasterxml.jackson.databind.node.BooleanNode;
import io.cucumber.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class AjoutDunObjectifStrategiqueAvecSucces {

    private static final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();



    @And("verifier que le dernier libelle objectif strategique et la derniere description sont {string}")
    public void verifierQueLeDernierLibelleObjectifStrategiqueEtLaDerniereDescriptionSont(String description) throws InterruptedException {



        //Partir sur la deniére page

        Boolean exist=false ;


        List<WebElement> list=driver.findElements(By.cssSelector(ConfigurationTalentLocators.Bouton_Pagination_Objectif_Strategique));

        if(list.size()!=0){
            exist=true;
        }

        while(exist){


            driver.findElement(By.cssSelector(ConfigurationTalentLocators.Bouton_Pagination_Objectif_Strategique)).click();
            action.pause(driver,2000);

            list=driver.findElements(By.cssSelector(ConfigurationTalentLocators.Bouton_Pagination_Objectif_Strategique));

            if(list.size()==0){
                exist=false;
            }


        }

        //récuperer l'indice du dernier élément affiché


        int indice =driver.findElements(By.xpath(ConfigurationTalentLocators.List_Objectif_Stategique)).size();


        //Vérification du libelle

        action.pause(driver,5000);


        String beforeXpath="/html/body/app-root/app-layout/div/section/div/acc-hr-talent-component/acc-hr-talent-configuration/div[2]/div[2]/section/acc-evaluation-configuration-strategictarget/div[2]/section/div[2]/div/div[1]/acc-evaluation-configuration-strategictarget-table/table/tbody/tr[";
        String afterXpath="]/td[1]";

        String actualXpath=beforeXpath+indice+afterXpath;


        Assert.assertEquals(description,driver.findElement(By.xpath(actualXpath)).getAttribute("innerText"));



       //Vérification de la description

         beforeXpath="/html/body/app-root/app-layout/div/section/div/acc-hr-talent-component/acc-hr-talent-configuration/div[2]/div[2]/section/acc-evaluation-configuration-strategictarget/div[2]/section/div[2]/div/div[1]/acc-evaluation-configuration-strategictarget-table/table/tbody/tr[";
         afterXpath="]/td[2]";

        actualXpath=beforeXpath+indice+afterXpath;

        Assert.assertEquals(description,driver.findElement(By.xpath(actualXpath)).getAttribute("innerText"));


    }


}
