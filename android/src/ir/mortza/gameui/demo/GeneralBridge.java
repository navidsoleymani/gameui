package ir.mortza.gameui.demo;

import android.content.pm.ActivityInfo;
import org.qtproject.qt5.android.bindings.QtActivity;

public class GeneralBridge {
    public static int changeScreenOrientation(QtActivity act, int n)
    {
        switch (n) {
            case 0:
                act.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
                break;
            case 1:
                act.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
                break;
        }
        return 0;
    }
}
