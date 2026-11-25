package com.api.automation.getRequest;


import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner {

    @Karate.Test
    public Karate runTest() {
        return Karate.run("getRequest", "reponseMatcher").relativeTo(getClass());

    }

    @Test
    public Karate runUsingClassPath(){
        return Karate.run("/Users/vikastalekar/IdeaProjects/KarateFramework/src/test/java/com/api/automation/getRequest/getRequest.feature");
    }



}
