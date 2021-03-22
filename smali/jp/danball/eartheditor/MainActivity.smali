.class public Ljp/danball/eartheditor/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private activity:Ljp/danball/eartheditor/MainActivity;

.field private ad_banner:Ljp/danball/eartheditor/AdBanner;

.field private ad_inter:Ljp/danball/eartheditor/AdInterstitial;

.field private ad_man:Ljp/danball/eartheditor/AdManager;

.field private ad_rect:Ljp/danball/eartheditor/AdBanner;

.field private bgm:[Landroid/media/MediaPlayer;

.field private bgm_play_state:[Z

.field private bgm_seek_state:[I

.field private bgm_volume_state:[F

.field private bitmap_tmp:Landroid/graphics/Bitmap;

.field public final debug:Z

.field public gl_disp_h:I

.field public gl_disp_w:I

.field public gl_dp_h:I

.field public gl_dp_w:I

.field public gl_fbuf_h:I

.field public gl_fbuf_w:I

.field public gl_frameskip:Z

.field public gl_height:I

.field public gl_ox:F

.field public gl_oy:F

.field public gl_pause:Z

.field public gl_width:I

.field private handler:Landroid/os/Handler;

.field private layout:Landroid/widget/FrameLayout;

.field lib_draw0:J

.field lib_draw1:J

.field lib_draw2:J

.field lib_draw_dt:I

.field public lib_scale:F

.field public lib_tablet:Z

.field private mGLView:Landroid/opengl/GLSurfaceView;

.field private final orientationEventListener:Landroid/hardware/SensorEventListener;

.field public ranking_state:I

.field private scheme_url:Landroid/net/Uri;

.field private sensorManager:Landroid/hardware/SensorManager;

.field public sns_state:I

.field private social_image_uri:Landroid/net/Uri;

.field public sys:Ljp/danball/eartheditor/SystemManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 570
    const-string v0, "ndk_loader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 100
    iput-boolean v1, p0, Ljp/danball/eartheditor/MainActivity;->debug:Z

    .line 111
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 112
    iput-boolean v1, p0, Ljp/danball/eartheditor/MainActivity;->lib_tablet:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/danball/eartheditor/MainActivity;->gl_frameskip:Z

    .line 116
    iput-object v2, p0, Ljp/danball/eartheditor/MainActivity;->scheme_url:Landroid/net/Uri;

    .line 529
    iput-object v2, p0, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 546
    new-instance v0, Ljp/danball/eartheditor/MainActivity$4;

    invoke-direct {v0, p0}, Ljp/danball/eartheditor/MainActivity$4;-><init>(Ljp/danball/eartheditor/MainActivity;)V

    iput-object v0, p0, Ljp/danball/eartheditor/MainActivity;->orientationEventListener:Landroid/hardware/SensorEventListener;

    .line 602
    iput-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw0:J

    iput-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw1:J

    iput-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw2:J

    .line 603
    iput v1, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw_dt:I

    .line 604
    iput-boolean v1, p0, Ljp/danball/eartheditor/MainActivity;->gl_pause:Z

    .line 774
    iput v1, p0, Ljp/danball/eartheditor/MainActivity;->ranking_state:I

    .line 794
    iput v1, p0, Ljp/danball/eartheditor/MainActivity;->sns_state:I

    .line 935
    iput-object v2, p0, Ljp/danball/eartheditor/MainActivity;->bitmap_tmp:Landroid/graphics/Bitmap;

    .line 1124
    iput-object v2, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    .line 134
    iput-object p0, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    .line 135
    return-void
.end method

.method static synthetic access$000(Ljp/danball/eartheditor/MainActivity;IIFF)V
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/MainActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Ljp/danball/eartheditor/MainActivity;->ndkTouchEvent(IIFF)V

    return-void
.end method

.method static synthetic access$100(Ljp/danball/eartheditor/MainActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 73
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdBanner;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 73
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    return-object v0
.end method

.method static synthetic access$300(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/MainActivity;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 73
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    return-object v0
.end method

.method static synthetic access$400(Ljp/danball/eartheditor/MainActivity;JFFF)V
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/MainActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # F

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Ljp/danball/eartheditor/MainActivity;->ndkAcceleEvent(JFFF)V

    return-void
.end method

.method static synthetic access$500(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdBanner;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 73
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    return-object v0
.end method

.method static synthetic access$600(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdInterstitial;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 73
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    return-object v0
.end method

.method static synthetic access$700(Ljp/danball/eartheditor/MainActivity;)Ljp/danball/eartheditor/AdManager;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 73
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_man:Ljp/danball/eartheditor/AdManager;

    return-object v0
.end method

.method static synthetic access$802(Ljp/danball/eartheditor/MainActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/MainActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 73
    iput-object p1, p0, Ljp/danball/eartheditor/MainActivity;->social_image_uri:Landroid/net/Uri;

    return-object p1
.end method

.method private ad_destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 754
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdBanner;->destroy()V

    .line 755
    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdBanner;->destroy()V

    .line 756
    :cond_1
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdInterstitial;->destroy()V

    .line 758
    :cond_2
    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->ad_man:Ljp/danball/eartheditor/AdManager;

    .line 759
    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    .line 760
    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    .line 761
    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    .line 762
    return-void
.end method

.method private ad_pause()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdBanner;->pause()V

    .line 741
    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdBanner;->pause()V

    .line 742
    :cond_1
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdInterstitial;->pause()V

    .line 743
    :cond_2
    return-void
.end method

.method private ad_resume()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdBanner;->resume()V

    .line 748
    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdBanner;->resume()V

    .line 749
    :cond_1
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdInterstitial;->resume()V

    .line 750
    :cond_2
    return-void
.end method

.method private bgm_finish()V
    .locals 3

    .prologue
    .line 1174
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 1182
    :cond_0
    return-void

    .line 1175
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1176
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 1175
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    :cond_2
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 1178
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 1179
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1180
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method private bgm_suspend()V
    .locals 3

    .prologue
    .line 1153
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 1161
    :cond_0
    return-void

    .line 1154
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1155
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 1154
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1156
    :cond_3
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_seek_state:[I

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    aput v2, v1, v0

    .line 1157
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_play_state:[Z

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 1158
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_play_state:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1
.end method

.method private exitRanking()V
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x1

    iput v0, p0, Ljp/danball/eartheditor/MainActivity;->ranking_state:I

    .line 789
    return-void
.end method

.method private native ndkAcceleEvent(JFFF)V
.end method

.method private native ndkDestroy(Ljp/danball/eartheditor/SystemManager;)V
.end method

.method private native ndkInit()V
.end method

.method private native ndkKeyEvent(III)V
.end method

.method private native ndkOnDrawFrame(Ljp/danball/eartheditor/SystemManager;I)V
.end method

.method private native ndkOnSurfaceChanged()V
.end method

.method private native ndkOnSurfaceCreated(Ljp/danball/eartheditor/SystemManager;)V
.end method

.method private native ndkPause(Ljp/danball/eartheditor/SystemManager;)V
.end method

.method private native ndkTouchEvent(IIFF)V
.end method

.method private scheme_setUrl(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_0

    .line 121
    iput-object v2, p0, Ljp/danball/eartheditor/MainActivity;->scheme_url:Landroid/net/Uri;

    .line 130
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->scheme_url:Landroid/net/Uri;

    goto :goto_0

    .line 128
    :cond_1
    iput-object v2, p0, Ljp/danball/eartheditor/MainActivity;->scheme_url:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public accele_start(F)V
    .locals 5
    .param p1, "interval"    # F

    .prologue
    .line 532
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 539
    :goto_0
    return-void

    .line 534
    :cond_0
    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    .line 538
    .local v0, "rate":I
    :goto_1
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->orientationEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 535
    .end local v0    # "rate":I
    :cond_1
    const v1, 0x3d23d70a    # 0.04f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "rate":I
    goto :goto_1

    .line 536
    .end local v0    # "rate":I
    :cond_2
    const v1, 0x3e051eb8    # 0.13f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "rate":I
    goto :goto_1

    .line 537
    .end local v0    # "rate":I
    :cond_3
    const/4 v0, 0x3

    .restart local v0    # "rate":I
    goto :goto_1
.end method

.method public accele_stop()V
    .locals 4

    .prologue
    .line 542
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->orientationEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public ad_init()V
    .locals 15

    .prologue
    const/16 v14, 0x1d4

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 639
    const/4 v1, 0x0

    .line 641
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    invoke-virtual {v9}, Ljp/danball/eartheditor/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v12, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    invoke-virtual {v12}, Ljp/danball/eartheditor/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x80

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 644
    :goto_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 646
    .local v2, "bundle":Landroid/os/Bundle;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 647
    .local v5, "disp":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    invoke-virtual {v9}, Ljp/danball/eartheditor/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 648
    iget v9, p0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    iget v12, p0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    if-ge v9, v12, :cond_6

    iget v8, p0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    .line 649
    .local v8, "w_dp":I
    :goto_1
    int-to-float v9, v8

    iget v12, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v12

    float-to-int v8, v9

    .line 652
    if-lt v8, v14, :cond_7

    const-string v9, "admob_banner_tablet"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "adid":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 654
    new-instance v12, Ljp/danball/eartheditor/AdBanner;

    iget-object v13, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    const/16 v9, 0x2d8

    if-lt v8, v9, :cond_8

    sget-object v9, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    :goto_3
    invoke-direct {v12, v13, v0, v9}, Ljp/danball/eartheditor/AdBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V

    iput-object v12, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    .line 656
    :cond_0
    const-string v9, "admob_rectangle"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_1

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 658
    new-instance v9, Ljp/danball/eartheditor/AdBanner;

    iget-object v12, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    sget-object v13, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v9, v12, v0, v13}, Ljp/danball/eartheditor/AdBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V

    iput-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    .line 660
    :cond_1
    const-string v9, "admob_interstitial"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_2

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 662
    new-instance v9, Ljp/danball/eartheditor/AdInterstitial;

    iget-object v12, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    invoke-direct {v9, v12, v0}, Ljp/danball/eartheditor/AdInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    .line 664
    :cond_2
    new-instance v9, Ljp/danball/eartheditor/AdManager;

    invoke-direct {v9}, Ljp/danball/eartheditor/AdManager;-><init>()V

    iput-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_man:Ljp/danball/eartheditor/AdManager;

    .line 667
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    invoke-virtual {v9}, Ljp/danball/eartheditor/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 668
    .local v7, "pkg":Ljava/lang/String;
    const-string v9, "com.digitalgene"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a

    move v4, v10

    .line 669
    .local v4, "dg":Z
    :goto_4
    const-string v9, "jp.danball"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "catshot.app"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_b

    :cond_3
    move v3, v10

    .line 670
    .local v3, "db":Z
    :goto_5
    sget-object v9, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 671
    .local v6, "ja":Z
    if-eqz v4, :cond_e

    .line 672
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    if-eqz v9, :cond_4

    .line 673
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    const-string v10, "digitalgene.png"

    iput-object v10, v9, Ljp/danball/eartheditor/AdBanner;->dummy_image:Ljava/lang/String;

    .line 674
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    if-eqz v6, :cond_c

    const-string v9, "http://digital-gene.com/app.php"

    :goto_6
    iput-object v9, v10, Ljp/danball/eartheditor/AdBanner;->dummy_link:Ljava/lang/String;

    .line 676
    :cond_4
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v9, :cond_5

    .line 677
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    const-string v10, "digitalgene_rect.png"

    iput-object v10, v9, Ljp/danball/eartheditor/AdBanner;->dummy_image:Ljava/lang/String;

    .line 678
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v6, :cond_d

    const-string v9, "http://digital-gene.com/app.php"

    :goto_7
    iput-object v9, v10, Ljp/danball/eartheditor/AdBanner;->dummy_link:Ljava/lang/String;

    .line 691
    :cond_5
    :goto_8
    return-void

    .line 648
    .end local v0    # "adid":Ljava/lang/String;
    .end local v3    # "db":Z
    .end local v4    # "dg":Z
    .end local v6    # "ja":Z
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "w_dp":I
    :cond_6
    iget v8, p0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    goto/16 :goto_1

    .line 652
    .restart local v8    # "w_dp":I
    :cond_7
    const-string v9, "admob_banner_phone"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 654
    .restart local v0    # "adid":Ljava/lang/String;
    :cond_8
    if-lt v8, v14, :cond_9

    sget-object v9, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto/16 :goto_3

    :cond_9
    sget-object v9, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    goto/16 :goto_3

    .restart local v7    # "pkg":Ljava/lang/String;
    :cond_a
    move v4, v11

    .line 668
    goto :goto_4

    .restart local v4    # "dg":Z
    :cond_b
    move v3, v11

    .line 669
    goto :goto_5

    .line 674
    .restart local v3    # "db":Z
    .restart local v6    # "ja":Z
    :cond_c
    const-string v9, "http://digital-gene.com/en/app.php"

    goto :goto_6

    .line 678
    :cond_d
    const-string v9, "http://digital-gene.com/en/app.php"

    goto :goto_7

    .line 681
    :cond_e
    if-eqz v3, :cond_5

    .line 682
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    if-eqz v9, :cond_f

    .line 683
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    const-string v10, "danball.png"

    iput-object v10, v9, Ljp/danball/eartheditor/AdBanner;->dummy_image:Ljava/lang/String;

    .line 684
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    if-eqz v6, :cond_10

    const-string v9, "http://dan-ball.jp/m/"

    :goto_9
    iput-object v9, v10, Ljp/danball/eartheditor/AdBanner;->dummy_link:Ljava/lang/String;

    .line 686
    :cond_f
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v9, :cond_5

    .line 687
    iget-object v9, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    const-string v10, "danball_rect.png"

    iput-object v10, v9, Ljp/danball/eartheditor/AdBanner;->dummy_image:Ljava/lang/String;

    .line 688
    iget-object v10, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v6, :cond_11

    const-string v9, "http://dan-ball.jp/m/"

    :goto_a
    iput-object v9, v10, Ljp/danball/eartheditor/AdBanner;->dummy_link:Ljava/lang/String;

    goto :goto_8

    .line 684
    :cond_10
    const-string v9, "http://dan-ball.jp/en/m/"

    goto :goto_9

    .line 688
    :cond_11
    const-string v9, "http://dan-ball.jp/en/m/"

    goto :goto_a

    .line 642
    .end local v0    # "adid":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "db":Z
    .end local v4    # "dg":Z
    .end local v5    # "disp":Landroid/util/DisplayMetrics;
    .end local v6    # "ja":Z
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "w_dp":I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method public ad_isInterstitialLoaded()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->ad_inter:Ljp/danball/eartheditor/AdInterstitial;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdInterstitial;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ad_move(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 715
    iget v2, p0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    int-to-float v2, v2

    iget v3, p0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 716
    .local v0, "sx":F
    iget v2, p0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    int-to-float v2, v2

    iget v3, p0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 717
    .local v1, "sy":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int p1, v2

    .line 718
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p2, v2

    .line 719
    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    iget v2, v2, Ljp/danball/eartheditor/AdBanner;->dx:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    iget v2, v2, Ljp/danball/eartheditor/AdBanner;->dy:I

    if-ne v2, p2, :cond_0

    .line 723
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    iput p1, v2, Ljp/danball/eartheditor/AdBanner;->dx:I

    .line 721
    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    iput p2, v2, Ljp/danball/eartheditor/AdBanner;->dy:I

    .line 722
    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_banner:Ljp/danball/eartheditor/AdBanner;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljp/danball/eartheditor/AdBanner;->update_margin:Z

    goto :goto_0
.end method

.method public ad_rect_move(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 727
    iget v2, p0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    int-to-float v2, v2

    iget v3, p0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 728
    .local v0, "sx":F
    iget v2, p0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    int-to-float v2, v2

    iget v3, p0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 729
    .local v1, "sy":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    float-to-int p1, v2

    .line 730
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p2, v2

    .line 731
    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    iget v2, v2, Ljp/danball/eartheditor/AdBanner;->dx:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    iget v2, v2, Ljp/danball/eartheditor/AdBanner;->dy:I

    if-ne v2, p2, :cond_0

    .line 736
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    iput p1, v2, Ljp/danball/eartheditor/AdBanner;->dx:I

    .line 733
    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    iput p2, v2, Ljp/danball/eartheditor/AdBanner;->dy:I

    .line 734
    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljp/danball/eartheditor/AdBanner;->update_margin:Z

    goto :goto_0
.end method

.method public ad_update(ZIZII)V
    .locals 8
    .param p1, "banner_show"    # Z
    .param p2, "banner_pos"    # I
    .param p3, "rect_show"    # Z
    .param p4, "rect_pos"    # I
    .param p5, "inter_show"    # I

    .prologue
    .line 695
    iget-object v7, p0, Ljp/danball/eartheditor/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Ljp/danball/eartheditor/MainActivity$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Ljp/danball/eartheditor/MainActivity$5;-><init>(Ljp/danball/eartheditor/MainActivity;ZIZII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method public asset_loadBitmap(Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "scale"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 937
    invoke-virtual {p0}, Ljp/danball/eartheditor/MainActivity;->asset_loadBitmapRelease()V

    .line 940
    :try_start_0
    invoke-virtual {p0}, Ljp/danball/eartheditor/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 945
    .local v2, "is":Ljava/io/InputStream;
    div-float v3, v7, p2

    .line 946
    .local v3, "n":F
    cmpl-float v6, v3, v7

    if-eqz v6, :cond_0

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x40800000    # 4.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x41000000    # 8.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x41800000    # 16.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x42000000    # 32.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x42800000    # 64.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x43000000    # 128.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x43800000    # 256.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x44000000    # 512.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_1

    .line 947
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 948
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 949
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 950
    float-to-int v6, v3

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 951
    invoke-static {v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Ljp/danball/eartheditor/MainActivity;->bitmap_tmp:Landroid/graphics/Bitmap;

    .line 965
    :goto_0
    iget-object v5, p0, Ljp/danball/eartheditor/MainActivity;->bitmap_tmp:Landroid/graphics/Bitmap;

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "n":F
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v5

    .line 941
    :catch_0
    move-exception v1

    .line 942
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .line 954
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "n":F
    :cond_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 955
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 956
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 957
    invoke-static {v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 958
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 960
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    float-to-int v6, v6

    invoke-static {v0, v5, v6, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Ljp/danball/eartheditor/MainActivity;->bitmap_tmp:Landroid/graphics/Bitmap;

    .line 962
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public asset_loadBitmapBuffer(Ljava/nio/ByteBuffer;IIFF)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "sx"    # F
    .param p5, "sy"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 976
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 977
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 978
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 980
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 981
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 982
    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 984
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 985
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5, p4, p5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 986
    cmpg-float v2, p4, v8

    if-gez v2, :cond_1

    int-to-float v2, p2

    neg-float v3, p4

    mul-float v7, v2, v3

    .line 987
    .local v7, "dx":F
    :goto_0
    cmpg-float v2, p5, v8

    if-gez v2, :cond_0

    int-to-float v2, p3

    neg-float v3, p5

    mul-float v8, v2, v3

    .line 988
    .local v8, "dy":F
    :cond_0
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 989
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bitmap_tmp:Landroid/graphics/Bitmap;

    .line 991
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 992
    const/4 v0, 0x0

    .line 994
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bitmap_tmp:Landroid/graphics/Bitmap;

    return-object v1

    .end local v7    # "dx":F
    .end local v8    # "dy":F
    :cond_1
    move v7, v8

    .line 986
    goto :goto_0
.end method

.method public asset_loadBitmapRelease()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bitmap_tmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bitmap_tmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bitmap_tmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public asset_loadImage(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x0

    .line 911
    :try_start_0
    invoke-virtual {p0}, Ljp/danball/eartheditor/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 913
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 914
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 915
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 916
    const/4 v6, 0x0

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 918
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 919
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 921
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 922
    .local v4, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 924
    .local v1, "h":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    const/4 v0, 0x0

    .line 927
    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v5, v4

    .line 931
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "h":I
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "w":I
    :goto_0
    return v5

    .line 929
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public bgm_init(I)V
    .locals 4
    .param p1, "max"    # I

    .prologue
    const/4 v3, 0x0

    .line 1139
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    array-length v1, v1

    if-ne v1, p1, :cond_1

    .line 1150
    :cond_0
    return-void

    .line 1140
    :cond_1
    new-array v1, p1, [Landroid/media/MediaPlayer;

    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    .line 1141
    new-array v1, p1, [F

    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_volume_state:[F

    .line 1142
    new-array v1, p1, [Z

    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_play_state:[Z

    .line 1143
    new-array v1, p1, [I

    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_seek_state:[I

    .line 1144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1145
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1146
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_volume_state:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 1147
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_play_state:[Z

    aput-boolean v3, v1, v0

    .line 1148
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_seek_state:[I

    aput v3, v1, v0

    .line 1144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bgm_isPlaying(I)Z
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 1131
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public bgm_load(Ljava/lang/String;ZF)I
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "loop"    # Z
    .param p3, "vol"    # F

    .prologue
    const/4 v9, -0x1

    .line 1185
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    move v8, v9

    .line 1209
    :goto_0
    return v8

    .line 1186
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 1187
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v8

    if-eqz v0, :cond_1

    .line 1186
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1190
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljp/danball/eartheditor/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 1191
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v1, v0, v8

    .line 1192
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v8

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1193
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v8

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1194
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1195
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v8

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1197
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p3, v0

    .line 1198
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1199
    :cond_2
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v8

    invoke-virtual {v0, p3, p3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1200
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm_volume_state:[F

    aput p3, v0, v8

    .line 1202
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1203
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1205
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move v8, v9

    .line 1206
    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    move v8, v9

    .line 1209
    goto :goto_0
.end method

.method public bgm_pause(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 1128
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public bgm_play(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 1125
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public bgm_play2(IFF)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "v"    # F
    .param p3, "t"    # F

    .prologue
    .line 1126
    invoke-virtual {p0, p1, p3}, Ljp/danball/eartheditor/MainActivity;->bgm_seek(IF)V

    invoke-virtual {p0, p1, p2}, Ljp/danball/eartheditor/MainActivity;->bgm_volume(IF)V

    invoke-virtual {p0, p1}, Ljp/danball/eartheditor/MainActivity;->bgm_play(I)V

    return-void
.end method

.method public bgm_resume()V
    .locals 4

    .prologue
    .line 1164
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 1171
    :cond_0
    return-void

    .line 1165
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1166
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 1165
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1167
    :cond_3
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->bgm_volume_state:[F

    aget v2, v2, v0

    iget-object v3, p0, Ljp/danball/eartheditor/MainActivity;->bgm_volume_state:[F

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1168
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity;->bgm_seek_state:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1169
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm_play_state:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1
.end method

.method public bgm_seek(IF)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "t"    # F

    .prologue
    .line 1130
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public bgm_stop(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 1127
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public bgm_volume(IF)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "v"    # F

    .prologue
    .line 1129
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->bgm_volume_state:[F

    aput p2, v0, p1

    return-void
.end method

.method public drawString(Ljava/lang/String;Ljava/nio/ByteBuffer;IIFZ)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "scale"    # F
    .param p6, "bold"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    .line 1037
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1038
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1039
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1040
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1041
    if-eqz p6, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1042
    mul-float v3, v4, p5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1044
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1046
    const v3, -0xddddde

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1047
    mul-float v3, v4, p5

    add-float/2addr v3, v6

    invoke-virtual {v1, p1, v6, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1048
    const v3, -0x222223

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1049
    mul-float v3, v4, p5

    add-float/2addr v3, v5

    invoke-virtual {v1, p1, v5, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1051
    invoke-virtual {v0, p2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1052
    return-void

    .line 1041
    :cond_0
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public exitSns()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 898
    const/4 v0, 0x1

    iput v0, p0, Ljp/danball/eartheditor/MainActivity;->sns_state:I

    .line 900
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->social_image_uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0}, Ljp/danball/eartheditor/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->social_image_uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 902
    iput-object v2, p0, Ljp/danball/eartheditor/MainActivity;->social_image_uri:Landroid/net/Uri;

    .line 904
    :cond_0
    return-void
.end method

.method public file_exist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1103
    invoke-virtual {p0, p1}, Ljp/danball/eartheditor/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1104
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public file_read(Ljava/nio/ByteBuffer;Ljava/lang/String;)I
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 1076
    const/4 v3, 0x0

    .line 1078
    .local v3, "size":I
    :try_start_0
    invoke-virtual {p0, p2}, Ljp/danball/eartheditor/MainActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 1079
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1080
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 1081
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1082
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 1083
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1084
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v3, v4

    .line 1086
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1092
    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return v3

    .line 1087
    :catch_0
    move-exception v1

    .line 1088
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .line 1091
    goto :goto_0

    .line 1089
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1090
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public file_rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "src_name"    # Ljava/lang/String;
    .param p2, "dst_name"    # Ljava/lang/String;

    .prologue
    .line 1110
    invoke-virtual {p0, p1}, Ljp/danball/eartheditor/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1111
    .local v1, "src_file":Ljava/io/File;
    invoke-virtual {p0, p2}, Ljp/danball/eartheditor/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1112
    .local v0, "dst_file":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method public file_size(Ljava/lang/String;)I
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1097
    invoke-virtual {p0, p1}, Ljp/danball/eartheditor/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1098
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0
.end method

.method public file_write(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 1059
    const/4 v3, 0x0

    .line 1061
    .local v3, "success":Z
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v4}, Ljp/danball/eartheditor/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1062
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1063
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1064
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1065
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1066
    const/4 v3, 0x1

    .line 1072
    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 1067
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .line 1071
    goto :goto_0

    .line 1069
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1070
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Ljp/danball/eartheditor/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Ljp/danball/eartheditor/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public http_request(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "url_string"    # Ljava/lang/String;

    .prologue
    .line 1001
    const/4 v2, 0x0

    .line 1002
    .local v2, "http":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 1003
    .local v3, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 1005
    .local v6, "str":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 1007
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 1009
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1012
    const/16 v8, 0x400

    new-array v4, v8, [B

    .line 1015
    .local v4, "line":[B
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 1016
    .local v5, "size":I
    if-gtz v5, :cond_2

    .line 1025
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1026
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1030
    .end local v4    # "line":[B
    .end local v5    # "size":I
    .end local v7    # "url":Ljava/net/URL;
    :cond_1
    :goto_1
    return-object v6

    .line 1017
    .restart local v4    # "line":[B
    .restart local v5    # "size":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_2
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 1020
    .end local v4    # "line":[B
    .end local v5    # "size":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 1021
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 1025
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1026
    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1027
    :catch_1
    move-exception v8

    goto :goto_1

    .line 1024
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1025
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1026
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1028
    :cond_5
    :goto_2
    throw v8

    .line 1027
    :catch_2
    move-exception v9

    goto :goto_2

    .restart local v4    # "line":[B
    .restart local v5    # "size":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_3
    move-exception v8

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string v0, "onActivityResult"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 87
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 88
    invoke-virtual {p0}, Ljp/danball/eartheditor/MainActivity;->exitSns()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_0

    .line 91
    invoke-direct {p0}, Ljp/danball/eartheditor/MainActivity;->exitRanking()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 37
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const-string v32, "onCreate"

    invoke-static/range {v32 .. v32}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljp/danball/eartheditor/MainActivity;->scheme_setUrl(Landroid/content/Intent;)V

    .line 143
    const/16 v32, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljp/danball/eartheditor/MainActivity;->setVolumeControlStream(I)V

    .line 144
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljp/danball/eartheditor/MainActivity;->requestWindowFeature(I)Z

    .line 145
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    const/16 v33, 0x400

    invoke-virtual/range {v32 .. v33}, Landroid/view/Window;->addFlags(I)V

    .line 157
    const/4 v6, 0x0

    .line 158
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljp/danball/eartheditor/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljp/danball/eartheditor/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x80

    invoke-virtual/range {v32 .. v34}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 160
    :goto_0
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v25, v0

    .line 162
    .local v25, "metaData":Landroid/os/Bundle;
    const-string v32, "APP_SLEEP_DISABLE"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 163
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v32

    const/16 v33, 0x80

    invoke-virtual/range {v32 .. v33}, Landroid/view/Window;->addFlags(I)V

    .line 167
    :cond_0
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_tablet:Z

    .line 168
    const-string v32, "gl_width_min_tablet"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    if-lez v32, :cond_1

    const-string v32, "gl_width_max_tablet"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    if-lez v32, :cond_1

    const-string v32, "gl_height_min_tablet"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    if-lez v32, :cond_1

    const-string v32, "gl_height_max_tablet"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    if-lez v32, :cond_1

    .line 169
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0xd

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_b

    .line 170
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v32, v0

    const/16 v33, 0x258

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_1

    .line 171
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_tablet:Z

    .line 172
    const-string v32, "Tablet mode"

    invoke-static/range {v32 .. v32}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 182
    :cond_1
    :goto_1
    const-string v32, "gl_ox"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_ox:F

    .line 183
    const-string v32, "gl_oy"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_oy:F

    .line 184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_tablet:Z

    move/from16 v32, v0

    if-eqz v32, :cond_d

    const-string v32, "gl_width_min_tablet"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 185
    .local v21, "gl_width_min":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_tablet:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    const-string v32, "gl_width_max_tablet"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 186
    .local v20, "gl_width_max":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_tablet:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    const-string v32, "gl_height_min_tablet"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 187
    .local v17, "gl_height_min":I
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_tablet:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    const-string v32, "gl_height_max_tablet"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 188
    .local v16, "gl_height_max":I
    :goto_5
    const-string v32, "gl_frameskip"

    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_frameskip:Z

    .line 189
    const-string v32, "gl_scale_3x"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 190
    .local v18, "gl_scale_3x":Z
    const-string v32, "gl_scale_4x"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 191
    .local v19, "gl_scale_4x":Z
    const-string v32, "gl_fbuf_device"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 192
    .local v15, "gl_fbuf_device":Z
    const-string v32, "orientation_sensor"

    const/16 v33, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 193
    .local v26, "orientation_sensor":Z
    const-string v32, "sensor_accele"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 194
    .local v29, "sensor_accele":Z
    const-string v32, "gl_depth"

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 196
    .local v14, "gl_depth":Z
    move/from16 v0, v21

    move/from16 v1, v17

    if-le v0, v1, :cond_11

    const/16 v24, 0x1

    .line 197
    .local v24, "landscape":Z
    :goto_6
    if-eqz v26, :cond_13

    if-eqz v24, :cond_12

    const/16 v32, 0x6

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljp/danball/eartheditor/MainActivity;->setRequestedOrientation(I)V

    .line 199
    if-eqz v29, :cond_2

    .line 200
    const-string v32, "sensor"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljp/danball/eartheditor/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/hardware/SensorManager;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    if-gtz v32, :cond_2

    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/MainActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 205
    :cond_2
    new-instance v32, Landroid/os/Handler;

    invoke-direct/range {v32 .. v32}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/MainActivity;->handler:Landroid/os/Handler;

    .line 208
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 209
    .local v8, "disp":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 210
    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 211
    .local v10, "disp_w":I
    iget v9, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 212
    .local v9, "disp_h":I
    if-eqz v24, :cond_3

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v32, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_4

    :cond_3
    if-nez v24, :cond_5

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v32, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_5

    .line 213
    :cond_4
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 214
    iget v9, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 216
    :cond_5
    int-to-float v0, v10

    move/from16 v32, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v12, v0

    .line 217
    .local v12, "dp_w":I
    int-to-float v0, v9

    move/from16 v32, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v11, v0

    .line 218
    .local v11, "dp_h":I
    const-string v32, "%d*%dpx (%d*%ddp)"

    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 220
    new-instance v32, Landroid/widget/FrameLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/MainActivity;->layout:Landroid/widget/FrameLayout;

    .line 225
    if-eqz v15, :cond_16

    .line 227
    if-eqz v24, :cond_15

    .line 228
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    .line 229
    int-to-float v0, v10

    move/from16 v32, v0

    int-to-float v0, v9

    move/from16 v33, v0

    div-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v32, v0

    div-int v32, v9, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 236
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    cmpg-float v32, v32, v33

    if-gez v32, :cond_6

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 237
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40800000    # 4.0f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_7

    const/high16 v32, 0x40800000    # 4.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 238
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40800000    # 4.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_8

    if-nez v19, :cond_8

    const/high16 v32, 0x40400000    # 3.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 239
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40400000    # 3.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_9

    if-nez v18, :cond_9

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 241
    :cond_9
    move-object/from16 v0, p0

    iput v10, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    move-object/from16 v0, p0

    iput v10, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_w:I

    .line 242
    move-object/from16 v0, p0

    iput v9, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    move-object/from16 v0, p0

    iput v9, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_h:I

    .line 322
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_dp_w:I

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    move/from16 v33, v0

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_dp_h:I

    .line 325
    new-instance v32, Ljp/danball/eartheditor/MainActivity$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Ljp/danball/eartheditor/MainActivity$1;-><init>(Ljp/danball/eartheditor/MainActivity;Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Ljp/danball/eartheditor/MainActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_w:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_h:I

    move/from16 v34, v0

    invoke-interface/range {v32 .. v34}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->layout:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 358
    const/4 v4, 0x1

    .line 360
    .local v4, "LAUNCH_TYPE":I
    :try_start_1
    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 361
    .local v22, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljp/danball/eartheditor/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v32

    const-string v33, "launch.png"

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v23

    .line 362
    .local v23, "istream":Ljava/io/InputStream;
    invoke-static/range {v23 .. v23}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 363
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 364
    sget-object v32, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 367
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 368
    .local v5, "anim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v32, 0x3e8

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 369
    const-wide/16 v32, 0x1f4

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 370
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 371
    new-instance v32, Ljp/danball/eartheditor/MainActivity$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljp/danball/eartheditor/MainActivity$2;-><init>(Ljp/danball/eartheditor/MainActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 389
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->layout:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    .end local v5    # "anim":Landroid/view/animation/AlphaAnimation;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v22    # "imageView":Landroid/widget/ImageView;
    .end local v23    # "istream":Ljava/io/InputStream;
    :goto_a
    invoke-direct/range {p0 .. p0}, Ljp/danball/eartheditor/MainActivity;->ndkInit()V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/danball/eartheditor/MainActivity;->layout:Landroid/widget/FrameLayout;

    move-object/from16 v32, v0

    new-instance v33, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    move/from16 v35, v0

    const/16 v36, 0x11

    invoke-direct/range {v33 .. v36}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljp/danball/eartheditor/MainActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    const-string v32, "gl:%d*%dpt  fbuf:%d*%dpx  disp:%d*%dpx  scale:%4.2f"

    const/16 v33, 0x7

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_w:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_h:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 399
    return-void

    .line 175
    .end local v4    # "LAUNCH_TYPE":I
    .end local v8    # "disp":Landroid/util/DisplayMetrics;
    .end local v9    # "disp_h":I
    .end local v10    # "disp_w":I
    .end local v11    # "dp_h":I
    .end local v12    # "dp_w":I
    .end local v14    # "gl_depth":Z
    .end local v15    # "gl_fbuf_device":Z
    .end local v16    # "gl_height_max":I
    .end local v17    # "gl_height_min":I
    .end local v18    # "gl_scale_3x":Z
    .end local v19    # "gl_scale_4x":Z
    .end local v20    # "gl_width_max":I
    .end local v21    # "gl_width_min":I
    .end local v24    # "landscape":Z
    .end local v26    # "orientation_sensor":Z
    .end local v29    # "sensor_accele":Z
    :cond_b
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0xb

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0xc

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 176
    :cond_c
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_tablet:Z

    .line 177
    const-string v32, "Tablet mode"

    invoke-static/range {v32 .. v32}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 184
    :cond_d
    const-string v32, "gl_width_min"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    goto/16 :goto_2

    .line 185
    .restart local v21    # "gl_width_min":I
    :cond_e
    const-string v32, "gl_width_max"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    goto/16 :goto_3

    .line 186
    .restart local v20    # "gl_width_max":I
    :cond_f
    const-string v32, "gl_height_min"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    goto/16 :goto_4

    .line 187
    .restart local v17    # "gl_height_min":I
    :cond_10
    const-string v32, "gl_height_max"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_5

    .line 196
    .restart local v14    # "gl_depth":Z
    .restart local v15    # "gl_fbuf_device":Z
    .restart local v16    # "gl_height_max":I
    .restart local v18    # "gl_scale_3x":Z
    .restart local v19    # "gl_scale_4x":Z
    .restart local v26    # "orientation_sensor":Z
    .restart local v29    # "sensor_accele":Z
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 197
    .restart local v24    # "landscape":Z
    :cond_12
    const/16 v32, 0x7

    goto/16 :goto_7

    :cond_13
    if-eqz v24, :cond_14

    const/16 v32, 0x0

    goto/16 :goto_7

    :cond_14
    const/16 v32, 0x1

    goto/16 :goto_7

    .line 232
    .restart local v8    # "disp":Landroid/util/DisplayMetrics;
    .restart local v9    # "disp_h":I
    .restart local v10    # "disp_w":I
    .restart local v11    # "dp_h":I
    .restart local v12    # "dp_w":I
    :cond_15
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    .line 233
    int-to-float v0, v9

    move/from16 v32, v0

    int-to-float v0, v10

    move/from16 v33, v0

    div-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v32, v0

    div-int v32, v10, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    goto/16 :goto_8

    .line 248
    :cond_16
    if-nez v24, :cond_25

    move/from16 v0, v21

    if-gt v0, v12, :cond_25

    move/from16 v0, v20

    if-gt v12, v0, :cond_25

    move/from16 v0, v17

    if-gt v0, v11, :cond_25

    .line 249
    move-object/from16 v0, p0

    iput v12, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    .line 250
    move/from16 v0, v16

    if-le v11, v0, :cond_23

    move/from16 v32, v16

    :goto_b
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    .line 252
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v32, v0

    div-int v32, v10, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    cmpg-float v32, v32, v33

    if-gez v32, :cond_17

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 254
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40800000    # 4.0f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_18

    const/high16 v32, 0x40800000    # 4.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 255
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40800000    # 4.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_19

    if-nez v19, :cond_19

    const/high16 v32, 0x40400000    # 3.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 256
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40400000    # 3.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_1a

    if-nez v18, :cond_1a

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 258
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_w:I

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_h:I

    .line 261
    move-object/from16 v0, p0

    iput v10, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    .line 262
    move/from16 v0, v16

    if-le v11, v0, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    const/high16 v33, 0x3f000000    # 0.5f

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    :goto_c
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    .line 283
    :cond_1b
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_w:I

    move/from16 v32, v0

    if-eqz v32, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_h:I

    move/from16 v32, v0

    if-nez v32, :cond_a

    .line 284
    :cond_1c
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v28, v32, v33

    .line 285
    .local v28, "ratio_gl":F
    int-to-float v0, v10

    move/from16 v32, v0

    int-to-float v0, v9

    move/from16 v33, v0

    div-float v27, v32, v33

    .line 286
    .local v27, "ratio_dev":F
    cmpg-float v32, v27, v28

    if-gez v32, :cond_2c

    .line 287
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v27

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v21

    if-ge v0, v1, :cond_1d

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    .line 290
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v32, v0

    div-int v32, v9, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 298
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    cmpg-float v32, v32, v33

    if-gez v32, :cond_1e

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 299
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40800000    # 4.0f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_1f

    const/high16 v32, 0x40800000    # 4.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 300
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40800000    # 4.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_20

    if-nez v19, :cond_20

    const/high16 v32, 0x40400000    # 3.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 301
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40400000    # 3.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_21

    if-nez v18, :cond_21

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 304
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_w:I

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_h:I

    .line 308
    int-to-float v0, v10

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_w:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v30, v32, v33

    .line 309
    .local v30, "sx":F
    int-to-float v0, v9

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_h:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v31, v32, v33

    .line 311
    .local v31, "sy":F
    cmpg-float v32, v30, v31

    if-gez v32, :cond_2e

    move/from16 v31, v30

    .line 314
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_w:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v30

    const/high16 v33, 0x3f000000    # 0.5f

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_h:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v31

    const/high16 v33, 0x3f000000    # 0.5f

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v0, v10, :cond_22

    move-object/from16 v0, p0

    iput v10, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    .line 318
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-le v0, v9, :cond_a

    move-object/from16 v0, p0

    iput v9, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    goto/16 :goto_9

    .end local v27    # "ratio_dev":F
    .end local v28    # "ratio_gl":F
    .end local v30    # "sx":F
    .end local v31    # "sy":F
    :cond_23
    move/from16 v32, v11

    .line 250
    goto/16 :goto_b

    :cond_24
    move/from16 v32, v9

    .line 262
    goto/16 :goto_c

    .line 265
    :cond_25
    if-eqz v24, :cond_1b

    move/from16 v0, v17

    if-gt v0, v11, :cond_1b

    move/from16 v0, v16

    if-gt v11, v0, :cond_1b

    move/from16 v0, v21

    if-gt v0, v12, :cond_1b

    .line 266
    move-object/from16 v0, p0

    iput v11, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    .line 267
    move/from16 v0, v20

    if-le v12, v0, :cond_2a

    move/from16 v32, v20

    :goto_10
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v32, v0

    div-int v32, v9, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    cmpg-float v32, v32, v33

    if-gez v32, :cond_26

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 271
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40800000    # 4.0f

    cmpl-float v32, v32, v33

    if-lez v32, :cond_27

    const/high16 v32, 0x40800000    # 4.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 272
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40800000    # 4.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_28

    if-nez v19, :cond_28

    const/high16 v32, 0x40400000    # 3.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 273
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v32, v0

    const/high16 v33, 0x40400000    # 3.0f

    cmpl-float v32, v32, v33

    if-nez v32, :cond_29

    if-nez v18, :cond_29

    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    .line 275
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_h:I

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_fbuf_w:I

    .line 278
    move-object/from16 v0, p0

    iput v9, v0, Ljp/danball/eartheditor/MainActivity;->gl_disp_h:I

    .line 279
    move/from16 v0, v20

    if-le v12, v0, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    const/high16 v33, 0x3f000000    # 0.5f

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    :goto_11
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_disp_w:I

    goto/16 :goto_d

    :cond_2a
    move/from16 v32, v12

    .line 267
    goto/16 :goto_10

    :cond_2b
    move/from16 v32, v10

    .line 279
    goto :goto_11

    .line 293
    .restart local v27    # "ratio_dev":F
    .restart local v28    # "ratio_gl":F
    :cond_2c
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v27

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v17

    if-ge v0, v1, :cond_2d

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_height:I

    .line 296
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Ljp/danball/eartheditor/MainActivity;->gl_width:I

    move/from16 v32, v0

    div-int v32, v10, v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Ljp/danball/eartheditor/MainActivity;->lib_scale:F

    goto/16 :goto_e

    .line 312
    .restart local v30    # "sx":F
    .restart local v31    # "sy":F
    :cond_2e
    move/from16 v30, v31

    goto/16 :goto_f

    .line 391
    .end local v27    # "ratio_dev":F
    .end local v28    # "ratio_gl":F
    .end local v30    # "sx":F
    .end local v31    # "sy":F
    .restart local v4    # "LAUNCH_TYPE":I
    :catch_0
    move-exception v13

    .line 392
    .local v13, "e":Ljava/io/IOException;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljp/danball/eartheditor/MainActivity;->gl_pause:Z

    goto/16 :goto_a

    .line 159
    .end local v4    # "LAUNCH_TYPE":I
    .end local v8    # "disp":Landroid/util/DisplayMetrics;
    .end local v9    # "disp_h":I
    .end local v10    # "disp_w":I
    .end local v11    # "dp_h":I
    .end local v12    # "dp_w":I
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "gl_depth":Z
    .end local v15    # "gl_fbuf_device":Z
    .end local v16    # "gl_height_max":I
    .end local v17    # "gl_height_min":I
    .end local v18    # "gl_scale_3x":Z
    .end local v19    # "gl_scale_4x":Z
    .end local v20    # "gl_width_max":I
    .end local v21    # "gl_width_min":I
    .end local v24    # "landscape":Z
    .end local v25    # "metaData":Landroid/os/Bundle;
    .end local v26    # "orientation_sensor":Z
    .end local v29    # "sensor_accele":Z
    :catch_1
    move-exception v32

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    const-string v0, "onDestroy"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->sys:Ljp/danball/eartheditor/SystemManager;

    invoke-direct {p0, v0}, Ljp/danball/eartheditor/MainActivity;->ndkDestroy(Ljp/danball/eartheditor/SystemManager;)V

    .line 484
    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    .line 485
    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->activity:Ljp/danball/eartheditor/MainActivity;

    .line 486
    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->handler:Landroid/os/Handler;

    .line 487
    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->layout:Landroid/widget/FrameLayout;

    .line 488
    iput-object v1, p0, Ljp/danball/eartheditor/MainActivity;->sys:Ljp/danball/eartheditor/SystemManager;

    .line 489
    invoke-direct {p0}, Ljp/danball/eartheditor/MainActivity;->ad_destroy()V

    .line 490
    invoke-virtual {p0}, Ljp/danball/eartheditor/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 491
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 494
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const-wide/16 v10, 0x11

    const-wide/16 v8, 0x0

    .line 608
    iget-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw0:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    iput-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw0:J

    .line 609
    :cond_0
    iget-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw1:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x21

    sub-long/2addr v4, v6

    iput-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw1:J

    .line 610
    :cond_1
    iget-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw2:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x32

    sub-long/2addr v4, v6

    iput-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw2:J

    .line 611
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 612
    .local v2, "now_":J
    iget v1, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw_dt:I

    iget-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw0:J

    sub-long v4, v2, v4

    sub-long/2addr v4, v10

    long-to-int v4, v4

    add-int/2addr v1, v4

    iput v1, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw_dt:I

    .line 613
    iget v1, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw_dt:I

    int-to-float v1, v1

    const v4, 0x41855555

    div-float/2addr v1, v4

    float-to-int v0, v1

    .line 614
    .local v0, "loop_":I
    if-lez v0, :cond_3

    .line 615
    iget v1, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw_dt:I

    mul-int/lit8 v4, v0, 0x11

    sub-int/2addr v1, v4

    iput v1, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw_dt:I

    .line 617
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 619
    if-gtz v0, :cond_6

    const/4 v0, 0x1

    .line 622
    :cond_4
    :goto_0
    iget-boolean v1, p0, Ljp/danball/eartheditor/MainActivity;->gl_pause:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity;->sys:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v4, p0, Ljp/danball/eartheditor/MainActivity;->gl_frameskip:Z

    if-eqz v4, :cond_7

    .end local v0    # "loop_":I
    :goto_1
    invoke-direct {p0, v1, v0}, Ljp/danball/eartheditor/MainActivity;->ndkOnDrawFrame(Ljp/danball/eartheditor/SystemManager;I)V

    .line 624
    :cond_5
    iget-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw1:J

    iput-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw2:J

    .line 625
    iget-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw0:J

    iput-wide v4, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw1:J

    .line 626
    iput-wide v2, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw0:J

    .line 627
    return-void

    .line 620
    .restart local v0    # "loop_":I
    :cond_6
    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 622
    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/danball/eartheditor/MainActivity;->gl_pause:Z

    .line 499
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Ljp/danball/eartheditor/MainActivity$3;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/MainActivity$3;-><init>(Ljp/danball/eartheditor/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 513
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 514
    invoke-direct {p0, v1, v1, p1}, Ljp/danball/eartheditor/MainActivity;->ndkKeyEvent(III)V

    .line 515
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 522
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Ljp/danball/eartheditor/MainActivity;->ndkKeyEvent(III)V

    .line 523
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 413
    invoke-virtual {p0, p1}, Ljp/danball/eartheditor/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 414
    const-string v0, "onNewIntent"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, p1}, Ljp/danball/eartheditor/MainActivity;->scheme_setUrl(Landroid/content/Intent;)V

    .line 416
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 468
    const-string v0, "onPause"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 473
    invoke-direct {p0}, Ljp/danball/eartheditor/MainActivity;->ad_pause()V

    .line 474
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->sys:Ljp/danball/eartheditor/SystemManager;

    invoke-direct {p0, v0}, Ljp/danball/eartheditor/MainActivity;->ndkPause(Ljp/danball/eartheditor/SystemManager;)V

    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/danball/eartheditor/MainActivity;->scheme_setUrl(Landroid/content/Intent;)V

    .line 477
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 478
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 421
    const-string v0, "onRestart"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 455
    const-string v0, "onResume"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 456
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 457
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 460
    invoke-direct {p0}, Ljp/danball/eartheditor/MainActivity;->ad_resume()V

    .line 461
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw2:J

    iput-wide v0, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw1:J

    iput-wide v0, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw0:J

    .line 462
    const/4 v0, 0x0

    iput v0, p0, Ljp/danball/eartheditor/MainActivity;->lib_draw_dt:I

    .line 464
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 426
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 427
    const-string v0, "onStart"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 598
    const-string v0, "onSurfaceChanged (w*h:%d*%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 599
    invoke-direct {p0}, Ljp/danball/eartheditor/MainActivity;->ndkOnSurfaceChanged()V

    .line 600
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 591
    const-string v0, "onSurfaceCreated"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->sys:Ljp/danball/eartheditor/SystemManager;

    invoke-direct {p0, v0}, Ljp/danball/eartheditor/MainActivity;->ndkOnSurfaceCreated(Ljp/danball/eartheditor/SystemManager;)V

    .line 593
    const-string v0, "onSurfaceCreated end"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 432
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 434
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljp/danball/eartheditor/MainActivity;->gl_pause:Z

    .line 436
    if-eqz p1, :cond_0

    .line 451
    :cond_0
    return-void

    .line 434
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public postSns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "buf"    # Ljava/nio/ByteBuffer;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 800
    if-eqz p4, :cond_1

    if-lez p5, :cond_1

    if-lez p6, :cond_1

    const/4 v2, 0x1

    .line 801
    .local v2, "use_image":Z
    :goto_0
    if-eqz v2, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p5, p6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 803
    .local v3, "ss":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 804
    invoke-virtual {v3, p4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 820
    :cond_0
    iget-object v7, p0, Ljp/danball/eartheditor/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Ljp/danball/eartheditor/MainActivity$7;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ljp/danball/eartheditor/MainActivity$7;-><init>(Ljp/danball/eartheditor/MainActivity;ZLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 894
    return-void

    .line 800
    .end local v2    # "use_image":Z
    .end local v3    # "ss":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 801
    .restart local v2    # "use_image":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public scheme_getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->scheme_url:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scheme_isLaunch()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->scheme_url:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRanking(I)V
    .locals 2
    .param p1, "stage"    # I

    .prologue
    .line 777
    const/4 v0, 0x2

    iput v0, p0, Ljp/danball/eartheditor/MainActivity;->ranking_state:I

    .line 778
    iget-object v0, p0, Ljp/danball/eartheditor/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Ljp/danball/eartheditor/MainActivity$6;

    invoke-direct {v1, p0, p1}, Ljp/danball/eartheditor/MainActivity$6;-><init>(Ljp/danball/eartheditor/MainActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 785
    return-void
.end method

.method public sys_init()V
    .locals 1

    .prologue
    .line 768
    new-instance v0, Ljp/danball/eartheditor/SystemManager;

    invoke-direct {v0, p0}, Ljp/danball/eartheditor/SystemManager;-><init>(Ljp/danball/eartheditor/MainActivity;)V

    iput-object v0, p0, Ljp/danball/eartheditor/MainActivity;->sys:Ljp/danball/eartheditor/SystemManager;

    .line 769
    return-void
.end method
