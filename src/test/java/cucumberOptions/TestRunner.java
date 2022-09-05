package cucumberOptions;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/java/features",   
		glue="stepDefinition",tags="@PortalTest", //u can also give ,tags="@SmokeTest or @RegTest" or "not @SanityTest"
		plugin= {"pretty","html:target/cucumber.html","json:target/cucumber.json","junit:target/cukes.xml"})   //pretty for color reports, and html to generate reports in html format

public class TestRunner {

}

//in the latest version strict is automatically applied to the project
//dryRun=true for checking if the mapping of scenarios with step definition is available
//monochrome=true, displays neatly, properly documented in the console