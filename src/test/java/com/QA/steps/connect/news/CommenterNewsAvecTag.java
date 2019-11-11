package com.QA.steps.connect.news;

import com.QA.locators.CommonLocators;
import com.QA.locators.NewsLocators;
import com.QA.locators.TimelineLocators;
import com.QA.steps.ActionsCommunes;
import com.QA.steps.GenerateurDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

public class CommenterNewsAvecTag {

    private final WebDriver driver = GenerateurDriver.driver;
    private ActionsCommunes action = new ActionsCommunes();
    private static int x ;
    static String Text_Commentaire;

    @When("l'utilisateur clique sur la news ajoutée")
    public void lUtilisateurCliqueSurLaNewsAjoutée() throws InterruptedException {

        driver.navigate().refresh();
        List<WebElement> Element1 = driver.findElements(By.cssSelector(NewsLocators.Liste_News_Déroulants));
        System.out.println(Element1.size());
        for ( WebElement element : Element1 )
        {
            if (element.getAttribute("outerText").contains(CreationNews.Titre_News))
            {
                element.click();
                Boolean modules = (new WebDriverWait(driver, 6))
                        .until(ExpectedConditions.attributeContains(By.xpath(NewsLocators.News_Active_Carroussel),"innerText",CreationNews.Titre_News));
                action.pause(driver,500);
                driver.findElement(By.xpath(NewsLocators.News_Active_Carroussel2)).click();
                break;
            }
        }
        action.pause(driver,200);
        List<WebElement> Element2 = driver.findElements(By.cssSelector("span[class=mention]"));
        x= Element2.size();
    }

    @And("l'utilisateur saisit {string} dans le champ du commentaire")
    public void lUtilisateurSaisitDansLeChampDuCommentaire(String arg0) throws InterruptedException {

        Text_Commentaire = arg0;
        driver.findElement(By.xpath(NewsLocators.Champs_Input_Commentaire_Sur_News)).sendKeys(arg0);
        action.pause(driver,3500);
        driver.findElement(By.cssSelector(CommonLocators.Option_Liste_Profil_Tag)).click();
        action.pause(driver,50);
    }

    @And("l'utilisateur clique sur publier commentaire")
    public void lUtilisateurCliqueSurPublier() {

        WebElement element = driver.findElement(By.xpath(TimelineLocators.Bouton_Submit_Commentaire));
        JavascriptExecutor executor = (JavascriptExecutor) driver;
        executor.executeScript("arguments[0].click();", element);

    }

    @Then("Vérifier que le tag est affiché")
    public void vérifierQueLeTagEstAffiché() throws InterruptedException {

        Boolean modules = (new WebDriverWait(driver, 6))
                .until(ExpectedConditions.attributeContains(By.xpath(NewsLocators.Premier_Commentaire_Sur_News),"innerText", Text_Commentaire));
        List<WebElement> Element3 = driver.findElements(By.cssSelector("span[class=mention]"));
        int nbrmention2 = Element3.size();
        Assert.assertEquals( x + 1,nbrmention2);
    }
}
