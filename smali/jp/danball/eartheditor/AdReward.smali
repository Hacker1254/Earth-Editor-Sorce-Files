.class public final Ljp/danball/eartheditor/AdReward;
.super Ljava/lang/Object;
.source "AdReward.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# instance fields
.field private final RELOAD_CLOSED:J

.field private final RELOAD_FAILED:J

.field private _activity:Landroid/support/v4/app/FragmentActivity;

.field private _adid:Ljava/lang/String;

.field private _cancel:Ljava/lang/String;

.field private _completed_time:J

.field private _handler:Landroid/os/Handler;

.field private _loaded:Z

.field private _message:Ljava/lang/String;

.field private _play:Ljava/lang/String;

.field private _title:Ljava/lang/String;

.field private mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/danball/eartheditor/AdReward;->_loaded:Z

    .line 25
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Ljp/danball/eartheditor/AdReward;->RELOAD_FAILED:J

    .line 26
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Ljp/danball/eartheditor/AdReward;->RELOAD_CLOSED:J

    return-void
.end method

.method static synthetic access$000(Ljp/danball/eartheditor/AdReward;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/AdReward;

    .prologue
    .line 16
    iget-object v0, p0, Ljp/danball/eartheditor/AdReward;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object v0
.end method

.method static synthetic access$002(Ljp/danball/eartheditor/AdReward;Lcom/google/android/gms/ads/reward/RewardedVideoAd;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/AdReward;
    .param p1, "x1"    # Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .prologue
    .line 16
    iput-object p1, p0, Ljp/danball/eartheditor/AdReward;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-object p1
.end method

.method static synthetic access$100(Ljp/danball/eartheditor/AdReward;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/AdReward;

    .prologue
    .line 16
    iget-object v0, p0, Ljp/danball/eartheditor/AdReward;->_activity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$200(Ljp/danball/eartheditor/AdReward;)Ljp/danball/eartheditor/AdReward;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/AdReward;

    .prologue
    .line 16
    invoke-direct {p0}, Ljp/danball/eartheditor/AdReward;->getInstance()Ljp/danball/eartheditor/AdReward;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljp/danball/eartheditor/AdReward;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljp/danball/eartheditor/AdReward;

    .prologue
    .line 16
    iget-object v0, p0, Ljp/danball/eartheditor/AdReward;->_adid:Ljava/lang/String;

    return-object v0
.end method

.method private getInstance()Ljp/danball/eartheditor/AdReward;
    .locals 0

    .prologue
    .line 30
    return-object p0
.end method

.method private request(J)V
    .locals 3
    .param p1, "msec"    # J

    .prologue
    .line 71
    iget-object v0, p0, Ljp/danball/eartheditor/AdReward;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/danball/eartheditor/AdReward;->_loaded:Z

    .line 73
    iget-object v0, p0, Ljp/danball/eartheditor/AdReward;->_handler:Landroid/os/Handler;

    new-instance v1, Ljp/danball/eartheditor/AdReward$2;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/AdReward$2;-><init>(Ljp/danball/eartheditor/AdReward;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private time()J
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getElapsedSec()J
    .locals 4

    .prologue
    .line 116
    invoke-direct {p0}, Ljp/danball/eartheditor/AdReward;->time()J

    move-result-wide v0

    iget-wide v2, p0, Ljp/danball/eartheditor/AdReward;->_completed_time:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "adid"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 34
    iput-object p1, p0, Ljp/danball/eartheditor/AdReward;->_activity:Landroid/support/v4/app/FragmentActivity;

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ljp/danball/eartheditor/AdReward;->_handler:Landroid/os/Handler;

    .line 36
    iput-object p2, p0, Ljp/danball/eartheditor/AdReward;->_adid:Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljp/danball/eartheditor/AdReward;->_loaded:Z

    .line 40
    iget-object v1, p0, Ljp/danball/eartheditor/AdReward;->_activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Ljp/danball/eartheditor/AdReward;->_completed_time:J

    .line 42
    iget-wide v2, p0, Ljp/danball/eartheditor/AdReward;->_completed_time:J

    invoke-direct {p0}, Ljp/danball/eartheditor/AdReward;->time()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iput-wide v6, p0, Ljp/danball/eartheditor/AdReward;->_completed_time:J

    .line 44
    :cond_0
    iget-object v1, p0, Ljp/danball/eartheditor/AdReward;->_handler:Landroid/os/Handler;

    new-instance v2, Ljp/danball/eartheditor/AdReward$1;

    invoke-direct {v2, p0}, Ljp/danball/eartheditor/AdReward$1;-><init>(Ljp/danball/eartheditor/AdReward;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Ljp/danball/eartheditor/AdReward;->_loaded:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V
    .locals 6
    .param p1, "reward"    # Lcom/google/android/gms/ads/reward/RewardItem;

    .prologue
    .line 133
    invoke-direct {p0}, Ljp/danball/eartheditor/AdReward;->time()J

    move-result-wide v2

    iput-wide v2, p0, Ljp/danball/eartheditor/AdReward;->_completed_time:J

    .line 135
    iget-object v2, p0, Ljp/danball/eartheditor/AdReward;->_activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 136
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Ljp/danball/eartheditor/AdReward;->_adid:Ljava/lang/String;

    iget-wide v4, p0, Ljp/danball/eartheditor/AdReward;->_completed_time:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 2

    .prologue
    .line 166
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Ljp/danball/eartheditor/AdReward;->request(J)V

    .line 167
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 150
    const-wide/32 v0, 0xea60

    invoke-direct {p0, v0, v1}, Ljp/danball/eartheditor/AdReward;->request(J)V

    .line 151
    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/danball/eartheditor/AdReward;->_loaded:Z

    .line 145
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onRewardedVideoStarted()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ljp/danball/eartheditor/AdReward;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Ljp/danball/eartheditor/AdReward;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Ljp/danball/eartheditor/AdReward;->mAd:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->show()V

    goto :goto_0
.end method

.method public resetElapsedSec()V
    .locals 2

    .prologue
    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/danball/eartheditor/AdReward;->_completed_time:J

    .line 122
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "play"    # Ljava/lang/String;
    .param p4, "cancel"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Ljp/danball/eartheditor/AdReward;->_title:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Ljp/danball/eartheditor/AdReward;->_message:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Ljp/danball/eartheditor/AdReward;->_play:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Ljp/danball/eartheditor/AdReward;->_cancel:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public showDialog()V
    .locals 5

    .prologue
    .line 83
    new-instance v0, Ljp/danball/eartheditor/DialogSimple;

    invoke-direct {v0}, Ljp/danball/eartheditor/DialogSimple;-><init>()V

    .line 84
    .local v0, "dialog":Ljp/danball/eartheditor/DialogSimple;
    iget-object v1, p0, Ljp/danball/eartheditor/AdReward;->_title:Ljava/lang/String;

    iget-object v2, p0, Ljp/danball/eartheditor/AdReward;->_message:Ljava/lang/String;

    iget-object v3, p0, Ljp/danball/eartheditor/AdReward;->_play:Ljava/lang/String;

    iget-object v4, p0, Ljp/danball/eartheditor/AdReward;->_cancel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljp/danball/eartheditor/DialogSimple;->setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljp/danball/eartheditor/AdReward$3;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/AdReward$3;-><init>(Ljp/danball/eartheditor/AdReward;)V

    iput-object v1, v0, Ljp/danball/eartheditor/DialogSimple;->listener:Ljp/danball/eartheditor/DialogSimple$Listner;

    .line 93
    iget-object v1, p0, Ljp/danball/eartheditor/AdReward;->_activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v1, v2}, Ljp/danball/eartheditor/DialogSimple;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 94
    return-void
.end method
