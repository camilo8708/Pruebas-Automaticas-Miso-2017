package com.fsck.k9.activity;


import android.support.test.espresso.ViewInteraction;
import android.support.test.rule.ActivityTestRule;
import android.support.test.runner.AndroidJUnit4;
import android.test.suitebuilder.annotation.LargeTest;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

import com.fsck.k9.R;

import org.hamcrest.Description;
import org.hamcrest.Matcher;
import org.hamcrest.TypeSafeMatcher;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.Espresso.pressBack;
import static android.support.test.espresso.action.ViewActions.click;
import static android.support.test.espresso.action.ViewActions.closeSoftKeyboard;
import static android.support.test.espresso.action.ViewActions.replaceText;
import static android.support.test.espresso.action.ViewActions.scrollTo;
import static android.support.test.espresso.matcher.ViewMatchers.isDisplayed;
import static android.support.test.espresso.matcher.ViewMatchers.withContentDescription;
import static android.support.test.espresso.matcher.ViewMatchers.withId;
import static android.support.test.espresso.matcher.ViewMatchers.withParent;
import static android.support.test.espresso.matcher.ViewMatchers.withText;
import static org.hamcrest.Matchers.allOf;

@LargeTest
@RunWith(AndroidJUnit4.class)
public class EspressoTest {

    @Rule
    public ActivityTestRule<Accounts> mActivityTestRule = new ActivityTestRule<>(Accounts.class);

    @Test
    public void espressoTest() {
        ViewInteraction editText = onView(
                withId(R.id.account_password));
        editText.perform(scrollTo(), replaceText("pr"), closeSoftKeyboard());

        ViewInteraction button = onView(
                allOf(withId(R.id.next), withText("Next"), isDisplayed()));
        button.perform(click());

        ViewInteraction editText2 = onView(
                withId(R.id.account_email));
        editText2.perform(scrollTo(), replaceText("misotest2017@hotmail.com"), closeSoftKeyboard());

        ViewInteraction editText3 = onView(
                withId(R.id.account_password));
        editText3.perform(scrollTo(), replaceText("pruebas2017*"), closeSoftKeyboard());

        ViewInteraction button2 = onView(
                allOf(withId(R.id.next), withText("Next"), isDisplayed()));
        button2.perform(click());

        ViewInteraction editText4 = onView(
                allOf(withId(R.id.account_description), withContentDescription("Give this account a name (optional):")));
        editText4.perform(scrollTo(), replaceText("misotes"), closeSoftKeyboard());

        ViewInteraction editText5 = onView(
                allOf(withId(R.id.account_name), withContentDescription("Type your name (displays on outgoing messages):")));
        editText5.perform(scrollTo(), replaceText("Misotest"), closeSoftKeyboard());

        ViewInteraction button3 = onView(
                allOf(withId(R.id.done), withText("Done"), isDisplayed()));
        button3.perform(click());

        ViewInteraction button4 = onView(
                allOf(withId(android.R.id.button1), withText("OK"), isDisplayed()));
        button4.perform(click());

        ViewInteraction linearLayout = onView(
                allOf(withId(R.id.accounts_item_layout),
                        childAtPosition(
                                withId(android.R.id.list),
                                2),
                        isDisplayed()));
        linearLayout.perform(click());

        ViewInteraction actionMenuItemView = onView(
                allOf(withId(R.id.compose), withContentDescription("Compose"), isDisplayed()));
        actionMenuItemView.perform(click());

        ViewInteraction recipientSelectView = onView(
                allOf(withId(R.id.to),
                        withParent(withId(R.id.to_wrapper))));
        recipientSelectView.perform(scrollTo(), replaceText(",, "), closeSoftKeyboard());

        ViewInteraction editText6 = onView(
                withId(R.id.subject));
        editText6.perform(scrollTo(), replaceText("Prueba Espresso"), closeSoftKeyboard());

        ViewInteraction eolConvertingEditText = onView(
                withId(R.id.message_content));
        eolConvertingEditText.perform(scrollTo(), replaceText("Texto del mensaje"), closeSoftKeyboard());

        ViewInteraction actionMenuItemView2 = onView(
                allOf(withId(R.id.send), withContentDescription("Send"), isDisplayed()));
        actionMenuItemView2.perform(click());

    }

    private static Matcher<View> childAtPosition(
            final Matcher<View> parentMatcher, final int position) {

        return new TypeSafeMatcher<View>() {
            @Override
            public void describeTo(Description description) {
                description.appendText("Child at position " + position + " in parent ");
                parentMatcher.describeTo(description);
            }

            @Override
            public boolean matchesSafely(View view) {
                ViewParent parent = view.getParent();
                return parent instanceof ViewGroup && parentMatcher.matches(parent)
                        && view.equals(((ViewGroup) parent).getChildAt(position));
            }
        };
    }
}
