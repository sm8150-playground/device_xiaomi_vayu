/*
 * Copyright (C) 2023 cyberknight777
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.lineageos.settings.fpsinfo;

import android.content.Context;
import android.content.res.Resources;
import com.android.settingslib.widget.R;

import org.lineageos.settings.utils.FileUtils;

public class DisplayFeaturesConfig {

    private static DisplayFeaturesConfig instance = null;

    public static DisplayFeaturesConfig getInstance(Context context) {

        if (instance == null) {
            instance = new DisplayFeaturesConfig(context.getApplicationContext());
        }

        return instance;
    }

    public static final String DISPLAYFEATURES_FPS_KEY = "fps";

    private final String config_DisplayFeaturesFpsPath;

    public static final String ACTION_FPS_SERVICE_CHANGED = "com.android.displayfeatures.display.FPS_SERVICE_CHANGED";
    public static final String EXTRA_FPS_STATE = "fpsenabled";
    public static final String PREF_KEY_FPS_STATE = "fps_running";

    private DisplayFeaturesConfig(Context context) {

	Resources res = context.getResources();

	config_DisplayFeaturesFpsPath = res.getString(R.string.config_DisplayFeaturesFpsPath);

    }

    public String getFpsPath() {
	return config_DisplayFeaturesFpsPath;
    }

    public boolean isCurrentlyEnabled(String node) {
        return FileUtils.getNodeValueAsBoolean(node, false);
    }
 }