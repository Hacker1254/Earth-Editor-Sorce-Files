.class public Ljp/danball/eartheditor/SystemManager;
.super Ljava/lang/Object;
.source "SystemManager.java"


# instance fields
.field private activity:Ljp/danball/eartheditor/MainActivity;

.field public final amazon:Z

.field public app_num:I

.field public app_ver:I

.field public app_ver_str:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public final country_code:Ljava/lang/String;

.field public final danball:Z

.field public final digitalgene:Z

.field private edtInput:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field public final inch:F

.field public final kindle:Z

.field public final lang_ja:Z

.field public final language_code:Ljava/lang/String;

.field public final package_name:Ljava/lang/String;

.field public photo_state:I

.field public send_name:Ljava/lang/String;

.field private send_stage:I

.field private final send_stage_offset:I

.field public send_state:I

.field private send_v0:I

.field private send_v1:I

.field private send_v2:I

.field private send_v3:I

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljp/danball/eartheditor/MainActivity;)V
    .locals 13
    .param p1, "activity_"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    const/4 v10, 0x0

    iput v10, p0, Ljp/danball/eartheditor/SystemManager;->photo_state:I

    .line 475
    const/4 v10, 0x0

    iput v10, p0, Ljp/danball/eartheditor/SystemManager;->send_state:I

    .line 74
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager;->activity:Ljp/danball/eartheditor/MainActivity;

    .line 75
    invoke-virtual {p1}, Ljp/danball/eartheditor/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    .line 76
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Ljp/danball/eartheditor/SystemManager;->handler:Landroid/os/Handler;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->activity:Ljp/danball/eartheditor/MainActivity;

    invoke-virtual {v10}, Ljp/danball/eartheditor/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Ljp/danball/eartheditor/SystemManager;->activity:Ljp/danball/eartheditor/MainActivity;

    invoke-virtual {v11}, Ljp/danball/eartheditor/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 81
    :goto_0
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 83
    .local v6, "metaData":Landroid/os/Bundle;
    const-string v10, "APP_ID"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    .line 84
    const-string v10, "AMAZON"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Ljp/danball/eartheditor/SystemManager;->amazon:Z

    .line 85
    const-string v10, "WR_COMMON"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    :goto_1
    iput v10, p0, Ljp/danball/eartheditor/SystemManager;->send_stage_offset:I

    .line 88
    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 90
    .local v7, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 91
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget v10, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v10, p0, Ljp/danball/eartheditor/SystemManager;->app_ver:I

    .line 92
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v10, p0, Ljp/danball/eartheditor/SystemManager;->app_ver_str:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ljp/danball/eartheditor/SystemManager;->country_code:Ljava/lang/String;

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ljp/danball/eartheditor/SystemManager;->language_code:Ljava/lang/String;

    .line 97
    sget-object v10, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    .line 98
    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v11, "Kindle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v11, "kindle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v11, "KINDLE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v11, "Kindle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v11, "kindle"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v11, "KINDLE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 99
    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Ljp/danball/eartheditor/SystemManager;->kindle:Z

    .line 103
    :goto_3
    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ljp/danball/eartheditor/SystemManager;->package_name:Ljava/lang/String;

    .line 104
    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->package_name:Ljava/lang/String;

    const-string v11, "com.digitalgene"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, p0, Ljp/danball/eartheditor/SystemManager;->digitalgene:Z

    .line 105
    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->package_name:Ljava/lang/String;

    const-string v11, "jp.danball"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->package_name:Ljava/lang/String;

    const-string v11, "catshot.app"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    :cond_1
    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, p0, Ljp/danball/eartheditor/SystemManager;->danball:Z

    .line 107
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 108
    .local v1, "disp":Landroid/util/DisplayMetrics;
    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->activity:Ljp/danball/eartheditor/MainActivity;

    invoke-virtual {v10}, Ljp/danball/eartheditor/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    iget v11, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v4, v10, v11

    .line 110
    .local v4, "inch_w":F
    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    iget v11, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v3, v10, v11

    .line 111
    .local v3, "inch_h":F
    mul-float v10, v4, v4

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, p0, Ljp/danball/eartheditor/SystemManager;->inch:F

    .line 114
    invoke-direct {p0}, Ljp/danball/eartheditor/SystemManager;->load()V

    .line 117
    const-string v10, "UID_TYPE"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v9, 0x1

    .line 118
    .local v9, "sys_uid_new":Z
    :goto_6
    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 119
    .local v8, "sp":Landroid/content/SharedPreferences;
    if-eqz v9, :cond_8

    const-string v10, "uid"

    const-string v11, ""

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Ljp/danball/eartheditor/SystemManager;->CreateID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_7
    iput-object v10, p0, Ljp/danball/eartheditor/SystemManager;->uid:Ljava/lang/String;

    .line 120
    iget-object v10, p0, Ljp/danball/eartheditor/SystemManager;->uid:Ljava/lang/String;

    const-string v11, "uid"

    const-string v12, ""

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 121
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 122
    .local v2, "e":Landroid/content/SharedPreferences$Editor;
    const-string v10, "uid"

    iget-object v11, p0, Ljp/danball/eartheditor/SystemManager;->uid:Ljava/lang/String;

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    .end local v2    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APP_ID:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " VER="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljp/danball/eartheditor/SystemManager;->app_ver_str:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ljp/danball/eartheditor/SystemManager;->app_ver:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljp/danball/eartheditor/SystemManager;->country_code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljp/danball/eartheditor/SystemManager;->language_code:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 127
    return-void

    .line 85
    .end local v1    # "disp":Landroid/util/DisplayMetrics;
    .end local v3    # "inch_h":F
    .end local v4    # "inch_w":F
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "sp":Landroid/content/SharedPreferences;
    .end local v9    # "sys_uid_new":Z
    :cond_3
    const/16 v10, 0x80

    goto/16 :goto_1

    .line 101
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Ljp/danball/eartheditor/SystemManager;->kindle:Z

    goto/16 :goto_3

    .line 104
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 105
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 117
    .restart local v1    # "disp":Landroid/util/DisplayMetrics;
    .restart local v3    # "inch_h":F
    .restart local v4    # "inch_w":F
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 119
    .restart local v8    # "sp":Landroid/content/SharedPreferences;
    .restart local v9    # "sys_uid_new":Z
    :cond_8
    const-string v10, "uid"

    const-string v11, ""

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Ljp/danball/eartheditor/SystemManager;->CreateID2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 93
    .end local v1    # "disp":Landroid/util/DisplayMetrics;
    .end local v3    # "inch_h":F
    .end local v4    # "inch_w":F
    .end local v8    # "sp":Landroid/content/SharedPreferences;
    .end local v9    # "sys_uid_new":Z
    :catch_0
    move-exception v10

    goto/16 :goto_2

    .line 80
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method private CreateID(Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p1, "uid_"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string v18, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 211
    .local v2, "ENC":[B
    array-length v3, v2

    .line 213
    .local v3, "ENC_LEN":I
    const/4 v4, 0x0

    .line 214
    .local v4, "create":Z
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 215
    :cond_0
    const/4 v4, 0x1

    .line 241
    :cond_1
    :goto_0
    if-nez v4, :cond_7

    .line 271
    .end local p1    # "uid_":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 219
    .restart local p1    # "uid_":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    .local v14, "sum0":I
    const/4 v15, 0x0

    .line 220
    .local v15, "sum1":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 221
    .local v16, "uid_char":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 222
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v3, :cond_3

    .line 223
    aget-byte v18, v16, v8

    aget-byte v19, v2, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 222
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 227
    :cond_3
    if-lt v9, v3, :cond_6

    .line 228
    const/4 v4, 0x1

    .line 235
    .end local v9    # "j":I
    :cond_4
    if-nez v4, :cond_1

    .line 236
    rem-int/lit8 v18, v14, 0x3e

    shr-int/lit8 v18, v18, 0x3

    and-int/lit8 v18, v18, 0x7

    rem-int/lit8 v19, v14, 0x3e

    and-int/lit8 v19, v19, 0x7

    add-int v18, v18, v19

    add-int v15, v15, v18

    .line 237
    add-int/2addr v15, v14

    .line 238
    const/16 v18, 0x8

    aget-byte v18, v16, v18

    rem-int v19, v14, v3

    aget-byte v19, v2, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x9

    aget-byte v18, v16, v18

    rem-int v19, v15, v3

    aget-byte v19, v2, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    .line 231
    .restart local v9    # "j":I
    :cond_6
    add-int/2addr v14, v9

    .line 232
    shr-int/lit8 v18, v9, 0x3

    and-int/lit8 v18, v18, 0x7

    and-int/lit8 v19, v9, 0x7

    add-int v18, v18, v19

    add-int v15, v15, v18

    .line 221
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 243
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v14    # "sum0":I
    .end local v15    # "sum1":I
    .end local v16    # "uid_char":[B
    :cond_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v17

    .line 244
    .local v17, "uuid":Ljava/util/UUID;
    invoke-virtual/range {v17 .. v17}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    .line 245
    .local v6, "h64":J
    invoke-virtual/range {v17 .. v17}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v10

    .line 247
    .local v10, "l64":J
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 248
    .local v13, "r16bit":[I
    const/16 v18, 0x0

    const-wide/32 v20, 0xffff

    and-long v20, v20, v10

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    aput v19, v13, v18

    .line 249
    const/16 v18, 0x1

    const/16 v19, 0x10

    shr-long v20, v10, v19

    const-wide/32 v22, 0xffff

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    aput v19, v13, v18

    .line 250
    const/16 v18, 0x2

    const/16 v19, 0x20

    shr-long v20, v10, v19

    const-wide/32 v22, 0xffff

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    aput v19, v13, v18

    .line 251
    const/16 v18, 0x3

    const/16 v19, 0x30

    shr-long v20, v10, v19

    const-wide/32 v22, 0xffff

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    aput v19, v13, v18

    .line 252
    const/16 v18, 0x4

    const-wide/32 v20, 0xffff

    and-long v20, v20, v6

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    aput v19, v13, v18

    .line 253
    const/16 v18, 0x5

    const/16 v19, 0x10

    shr-long v20, v6, v19

    const-wide/32 v22, 0xffff

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    aput v19, v13, v18

    .line 254
    const/16 v18, 0x6

    const/16 v19, 0x20

    shr-long v20, v6, v19

    const-wide/32 v22, 0xffff

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    aput v19, v13, v18

    .line 255
    const/16 v18, 0x7

    const/16 v19, 0x30

    shr-long v20, v6, v19

    const-wide/32 v22, 0xffff

    and-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    aput v19, v13, v18

    .line 257
    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 258
    .local v5, "enc":[B
    const/4 v14, 0x0

    .restart local v14    # "sum0":I
    const/4 v15, 0x0

    .line 260
    .restart local v15    # "sum1":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v8, v0, :cond_8

    .line 261
    aget v18, v13, v8

    rem-int v12, v18, v3

    .line 262
    .local v12, "r":I
    add-int/2addr v14, v12

    .line 263
    shr-int/lit8 v18, v12, 0x3

    and-int/lit8 v18, v18, 0x7

    and-int/lit8 v19, v12, 0x7

    add-int v18, v18, v19

    add-int v15, v15, v18

    .line 264
    aget-byte v18, v2, v12

    aput-byte v18, v5, v8

    .line 260
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 266
    .end local v12    # "r":I
    :cond_8
    rem-int/lit8 v18, v14, 0x3e

    shr-int/lit8 v18, v18, 0x3

    and-int/lit8 v18, v18, 0x7

    rem-int/lit8 v19, v14, 0x3e

    and-int/lit8 v19, v19, 0x7

    add-int v18, v18, v19

    add-int v15, v15, v18

    .line 267
    add-int/2addr v15, v14

    .line 268
    const/16 v18, 0x8

    rem-int v19, v14, v3

    aget-byte v19, v2, v19

    aput-byte v19, v5, v18

    .line 269
    const/16 v18, 0x9

    rem-int v19, v15, v3

    aget-byte v19, v2, v19

    aput-byte v19, v5, v18

    .line 271
    new-instance p1, Ljava/lang/String;

    .end local p1    # "uid_":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_1
.end method

.method private CreateID2(Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p1, "uid_"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v20, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 278
    .local v2, "ENC_CHK":[B
    const-string v20, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 279
    .local v4, "ENC_GEN":[B
    array-length v3, v2

    .line 280
    .local v3, "ENC_CHK_LEN":I
    array-length v5, v4

    .line 282
    .local v5, "ENC_GEN_LEN":I
    const/4 v6, 0x0

    .line 283
    .local v6, "create":Z
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 284
    :cond_0
    const/4 v6, 0x1

    .line 301
    :cond_1
    :goto_0
    if-nez v6, :cond_5

    .line 335
    .end local p1    # "uid_":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 288
    .restart local p1    # "uid_":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    .line 289
    .local v18, "uid_char":[B
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_1

    .line 290
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    if-ge v11, v3, :cond_3

    .line 291
    aget-byte v20, v18, v10

    aget-byte v21, v2, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 290
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 294
    :cond_3
    if-lt v11, v3, :cond_4

    .line 295
    const/4 v6, 0x1

    .line 296
    goto :goto_0

    .line 289
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 307
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v18    # "uid_char":[B
    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v19

    .line 308
    .local v19, "uuid":Ljava/util/UUID;
    invoke-virtual/range {v19 .. v19}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    .line 309
    .local v8, "h64":J
    invoke-virtual/range {v19 .. v19}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v12

    .line 311
    .local v12, "l64":J
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v15, v0, [I

    .line 312
    .local v15, "r16bit":[I
    const/16 v20, 0x0

    const-wide/32 v22, 0xffff

    and-long v22, v22, v12

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    aput v21, v15, v20

    .line 313
    const/16 v20, 0x1

    const/16 v21, 0x10

    shr-long v22, v12, v21

    const-wide/32 v24, 0xffff

    and-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    aput v21, v15, v20

    .line 314
    const/16 v20, 0x2

    const/16 v21, 0x20

    shr-long v22, v12, v21

    const-wide/32 v24, 0xffff

    and-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    aput v21, v15, v20

    .line 315
    const/16 v20, 0x3

    const/16 v21, 0x30

    shr-long v22, v12, v21

    const-wide/32 v24, 0xffff

    and-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    aput v21, v15, v20

    .line 316
    const/16 v20, 0x4

    const-wide/32 v22, 0xffff

    and-long v22, v22, v8

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    aput v21, v15, v20

    .line 317
    const/16 v20, 0x5

    const/16 v21, 0x10

    shr-long v22, v8, v21

    const-wide/32 v24, 0xffff

    and-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    aput v21, v15, v20

    .line 318
    const/16 v20, 0x6

    const/16 v21, 0x20

    shr-long v22, v8, v21

    const-wide/32 v24, 0xffff

    and-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    aput v21, v15, v20

    .line 319
    const/16 v20, 0x7

    const/16 v21, 0x30

    shr-long v22, v8, v21

    const-wide/32 v24, 0xffff

    and-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    aput v21, v15, v20

    .line 321
    const/16 v20, 0xa

    move/from16 v0, v20

    new-array v7, v0, [B

    .line 322
    .local v7, "enc":[B
    const/16 v16, 0x0

    .local v16, "sum0":I
    const/16 v17, 0x0

    .line 324
    .local v17, "sum1":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ge v10, v0, :cond_6

    .line 325
    aget v20, v15, v10

    rem-int v14, v20, v5

    .line 326
    .local v14, "r":I
    add-int v16, v16, v14

    .line 327
    shr-int/lit8 v20, v14, 0x3

    and-int/lit8 v20, v20, 0x7

    and-int/lit8 v21, v14, 0x7

    add-int v20, v20, v21

    add-int v17, v17, v20

    .line 328
    aget-byte v20, v4, v14

    aput-byte v20, v7, v10

    .line 324
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 330
    .end local v14    # "r":I
    :cond_6
    rem-int/lit8 v20, v16, 0x3e

    shr-int/lit8 v20, v20, 0x3

    and-int/lit8 v20, v20, 0x7

    rem-int/lit8 v21, v16, 0x3e

    and-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    add-int v17, v17, v20

    .line 331
    add-int v17, v17, v16

    .line 332
    const/16 v20, 0x8

    rem-int v21, v16, v5

    aget-byte v21, v4, v21

    aput-byte v21, v7, v20

    .line 333
    const/16 v20, 0x9

    rem-int v21, v17, v5

    aget-byte v21, v4, v21

    aput-byte v21, v7, v20

    .line 335
    new-instance p1, Ljava/lang/String;

    .end local p1    # "uid_":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 43
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->activity:Ljp/danball/eartheditor/MainActivity;

    return-object v0
.end method

.method static synthetic access$100(Ljp/danball/eartheditor/SystemManager;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 43
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->edtInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Ljp/danball/eartheditor/SystemManager;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/SystemManager;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 43
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager;->edtInput:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$200(Ljp/danball/eartheditor/SystemManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 43
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Ljp/danball/eartheditor/SystemManager;)V
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 43
    invoke-direct {p0}, Ljp/danball/eartheditor/SystemManager;->send()V

    return-void
.end method

.method static synthetic access$400(Ljp/danball/eartheditor/SystemManager;)I
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 43
    iget v0, p0, Ljp/danball/eartheditor/SystemManager;->send_stage:I

    return v0
.end method

.method static synthetic access$500(Ljp/danball/eartheditor/SystemManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 43
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private connect(Ljava/lang/String;)V
    .locals 3
    .param p1, "url_string"    # Ljava/lang/String;

    .prologue
    .line 589
    const/4 v1, 0x2

    iput v1, p0, Ljp/danball/eartheditor/SystemManager;->send_state:I

    .line 590
    new-instance v0, Ljp/danball/eartheditor/SystemManager$6;

    invoke-direct {v0, p0}, Ljp/danball/eartheditor/SystemManager$6;-><init>(Ljp/danball/eartheditor/SystemManager;)V

    .line 646
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 647
    return-void
.end method

.method private load()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "send_name"

    const-string v2, "name"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/danball/eartheditor/SystemManager;->send_name:Ljava/lang/String;

    .line 175
    return-void
.end method

.method private send()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 561
    iget v4, p0, Ljp/danball/eartheditor/SystemManager;->send_stage:I

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_stage_offset:I

    add-int v3, v4, v5

    .line 562
    .local v3, "stage":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 563
    .local v2, "r":I
    const/4 v0, 0x0

    .line 564
    .local v0, "c":I
    iget-boolean v4, p0, Ljp/danball/eartheditor/SystemManager;->digitalgene:Z

    if-eqz v4, :cond_2

    iget v4, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    mul-int/lit8 v4, v4, 0xd

    add-int/lit8 v4, v4, 0x9

    mul-int/lit8 v5, v3, 0xb

    add-int/2addr v4, v5

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v0:I

    add-int/2addr v4, v5

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v1:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v2:I

    mul-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v3:I

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int v0, v4, v2

    .line 567
    :cond_0
    :goto_0
    and-int/lit8 v4, v0, 0xf

    shl-int v4, v8, v4

    xor-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x2

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 568
    and-int/lit8 v4, v0, 0xf

    shl-int v4, v8, v4

    xor-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 569
    and-int/lit8 v4, v0, 0xf

    shl-int v4, v8, v4

    xor-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x2

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v0:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 570
    and-int/lit8 v4, v0, 0xf

    shl-int v4, v8, v4

    xor-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x2

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v1:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 571
    and-int/lit8 v4, v0, 0xf

    shl-int v4, v8, v4

    xor-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x2

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v2:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 572
    and-int/lit8 v4, v0, 0xf

    shl-int v4, v8, v4

    xor-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x2

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v3:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 575
    const/4 v1, 0x0

    .line 577
    .local v1, "encoded":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Ljp/danball/eartheditor/SystemManager;->send_name:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 582
    :goto_1
    iget-boolean v4, p0, Ljp/danball/eartheditor/SystemManager;->digitalgene:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://digital-gene.com/r/send_week.php?a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&b="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljp/danball/eartheditor/SystemManager;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&g="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v3:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljp/danball/eartheditor/SystemManager;->connect(Ljava/lang/String;)V

    .line 585
    :cond_1
    :goto_2
    return-void

    .line 565
    .end local v1    # "encoded":Ljava/lang/String;
    :cond_2
    iget-boolean v4, p0, Ljp/danball/eartheditor/SystemManager;->danball:Z

    if-eqz v4, :cond_0

    iget v4, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    mul-int/lit8 v4, v4, 0xd

    add-int/lit8 v4, v4, 0xd

    mul-int/lit8 v5, v3, 0xb

    add-int/2addr v4, v5

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v0:I

    add-int/2addr v4, v5

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v1:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v2:I

    mul-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v3:I

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int v0, v4, v2

    goto/16 :goto_0

    .line 583
    .restart local v1    # "encoded":Ljava/lang/String;
    :cond_3
    iget-boolean v4, p0, Ljp/danball/eartheditor/SystemManager;->danball:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://dan-ball.jp/score/mobile_rank2.php?a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&b="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljp/danball/eartheditor/SystemManager;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->app_ver:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljp/danball/eartheditor/SystemManager;->country_code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v0:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&g="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->send_v3:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljp/danball/eartheditor/SystemManager;->connect(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 578
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method


# virtual methods
.method public getWebRankingURL(I)Ljava/lang/String;
    .locals 8
    .param p1, "stage"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    iget v3, p0, Ljp/danball/eartheditor/SystemManager;->send_stage_offset:I

    add-int/2addr p1, v3

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v3, 0xa

    shr-long/2addr v4, v3

    const-wide/32 v6, 0xffffff

    and-long/2addr v4, v6

    long-to-int v0, v4

    .line 382
    .local v0, "dummy":I
    iget-boolean v3, p0, Ljp/danball/eartheditor/SystemManager;->digitalgene:Z

    if-eqz v3, :cond_2

    const-string v3, "http://digital-gene.com/r/rank%03d.php?g=%d&s=%d&u=%s&l=%d&t=1&n=%d&p=%s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Ljp/danball/eartheditor/SystemManager;->uid:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-boolean v6, p0, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v6, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v2, 0x6

    iget-boolean v1, p0, Ljp/danball/eartheditor/SystemManager;->amazon:Z

    if-eqz v1, :cond_1

    const-string v1, "amazon"

    :goto_1
    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 384
    :goto_2
    return-object v1

    :cond_0
    move v1, v2

    .line 382
    goto :goto_0

    :cond_1
    const-string v1, "google"

    goto :goto_1

    .line 383
    :cond_2
    iget-boolean v1, p0, Ljp/danball/eartheditor/SystemManager;->danball:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://dan-ball.jp/m/ranking.php?a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljp/danball/eartheditor/SystemManager;->app_ver:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager;->country_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&d=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://dan-ball.jp/en/m/ranking.php?a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljp/danball/eartheditor/SystemManager;->app_num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljp/danball/eartheditor/SystemManager;->app_ver:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager;->country_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&d=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 384
    :cond_4
    const-string v1, ""

    goto/16 :goto_2
.end method

.method public loadBool(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # D

    .prologue
    .line 134
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public loadFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 133
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public loadInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 131
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public loadLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 132
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public save()V
    .locals 4

    .prologue
    .line 181
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "send_name"

    iget-object v3, p0, Ljp/danball/eartheditor/SystemManager;->send_name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    return-void
.end method

.method public saveBool(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 159
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    return-void
.end method

.method public saveDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # D

    .prologue
    .line 154
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 155
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    return-void
.end method

.method public saveFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 149
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    return-void
.end method

.method public saveInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 139
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    return-void
.end method

.method public saveLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # J

    .prologue
    .line 144
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method public savePhoto(Ljava/nio/ByteBuffer;II)V
    .locals 16
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 394
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Ljp/danball/eartheditor/SystemManager;->photo_state:I

    .line 397
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 398
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x0

    iput-boolean v12, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 399
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v12, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 401
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 402
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 407
    .local v7, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 410
    .local v9, "succeeded":Z
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 411
    .local v11, "values":Landroid/content/ContentValues;
    const-string v12, "mime_type"

    const-string v13, "image/png"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v12, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 414
    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 417
    .local v10, "uri":Landroid/net/Uri;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual {v7, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 418
    .local v6, "out":Ljava/io/BufferedOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x64

    invoke-virtual {v2, v12, v13, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 419
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 420
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    const/4 v9, 0x1

    .line 450
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    :goto_0
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v12, :cond_0

    const-string v4, "\u5199\u771f\u3092\u4fdd\u5b58\u3057\u307e\u3057\u305f"

    .line 451
    .local v4, "msg":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_3

    const/4 v8, 0x1

    .line 453
    .local v8, "state_tmp":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Ljp/danball/eartheditor/SystemManager;->handler:Landroid/os/Handler;

    new-instance v13, Ljp/danball/eartheditor/SystemManager$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v8}, Ljp/danball/eartheditor/SystemManager$4;-><init>(Ljp/danball/eartheditor/SystemManager;Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    return-void

    .line 423
    .end local v4    # "msg":Ljava/lang/String;
    .end local v8    # "state_tmp":I
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 424
    .local v3, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    goto :goto_0

    .line 426
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :try_start_2
    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 428
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    .line 429
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_0

    .line 450
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, "Succeeded."

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v12, :cond_2

    const-string v4, "\u4fdd\u5b58\u306b\u5931\u6557\u3057\u307e\u3057\u305f"

    goto :goto_1

    :cond_2
    const-string v4, "Failed."

    goto :goto_1

    .line 451
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_3
    const/4 v8, -0x1

    goto :goto_2
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return-void
.end method

.method public showNameDialog(IIIIILjava/lang/String;)V
    .locals 2
    .param p1, "stage"    # I
    .param p2, "v0"    # I
    .param p3, "v1"    # I
    .param p4, "v2"    # I
    .param p5, "v3"    # I
    .param p6, "msg"    # Ljava/lang/String;

    .prologue
    .line 479
    const/4 v0, 0x0

    iput v0, p0, Ljp/danball/eartheditor/SystemManager;->send_state:I

    .line 480
    iput p1, p0, Ljp/danball/eartheditor/SystemManager;->send_stage:I

    .line 481
    iput p2, p0, Ljp/danball/eartheditor/SystemManager;->send_v0:I

    .line 482
    iput p3, p0, Ljp/danball/eartheditor/SystemManager;->send_v1:I

    .line 483
    iput p4, p0, Ljp/danball/eartheditor/SystemManager;->send_v2:I

    .line 484
    iput p5, p0, Ljp/danball/eartheditor/SystemManager;->send_v3:I

    .line 487
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->handler:Landroid/os/Handler;

    new-instance v1, Ljp/danball/eartheditor/SystemManager$5;

    invoke-direct {v1, p0, p6}, Ljp/danball/eartheditor/SystemManager$5;-><init>(Ljp/danball/eartheditor/SystemManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void
.end method

.method public showReview()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->handler:Landroid/os/Handler;

    new-instance v1, Ljp/danball/eartheditor/SystemManager$3;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/SystemManager$3;-><init>(Ljp/danball/eartheditor/SystemManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method

.method public web()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->handler:Landroid/os/Handler;

    new-instance v1, Ljp/danball/eartheditor/SystemManager$1;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/SystemManager$1;-><init>(Ljp/danball/eartheditor/SystemManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method public web2(Ljava/lang/String;)V
    .locals 2
    .param p1, "url_str"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager;->handler:Landroid/os/Handler;

    new-instance v1, Ljp/danball/eartheditor/SystemManager$2;

    invoke-direct {v1, p0, p1}, Ljp/danball/eartheditor/SystemManager$2;-><init>(Ljp/danball/eartheditor/SystemManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method
