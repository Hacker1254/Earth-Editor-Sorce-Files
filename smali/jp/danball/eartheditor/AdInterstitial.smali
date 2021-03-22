.class public final Ljp/danball/eartheditor/AdInterstitial;
.super Ljava/lang/Object;
.source "AdInterstitial.java"


# static fields
.field private static final REQ_TIMEOUT:J = 0x3a98L

.field private static final REQ_WAIT:J = 0x2bf20L

.field private static final STATE_FAILED:I = 0x3

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_LOADED:I = 0x2

.field private static final STATE_REQ:I = 0x1

.field private static final STATE_USED:I = 0x4


# instance fields
.field private activity:Landroid/app/Activity;

.field private ad:Lcom/google/android/gms/ads/InterstitialAd;

.field private final ad_id:Ljava/lang/String;

.field private req_time:J

.field private state:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity_"    # Landroid/app/Activity;
    .param p2, "ad_id_"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ljp/danball/eartheditor/AdInterstitial;->activity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Ljp/danball/eartheditor/AdInterstitial;->ad_id:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Ljp/danball/eartheditor/AdInterstitial;->state:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljp/danball/eartheditor/AdInterstitial;->req_time:J

    .line 36
    return-void
.end method

.method static synthetic access$002(Ljp/danball/eartheditor/AdInterstitial;I)I
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/AdInterstitial;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Ljp/danball/eartheditor/AdInterstitial;->state:I

    return p1
.end method


# virtual methods
.method public ad_release()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    const-string v0, "-- Admob Interstitial Release"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    .line 73
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    .line 49
    return-void
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Ljp/danball/eartheditor/AdInterstitial;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 55
    iget v1, p0, Ljp/danball/eartheditor/AdInterstitial;->state:I

    if-ne v1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljp/danball/eartheditor/AdInterstitial;->req_time:J

    const-wide/16 v6, 0x3a98

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public req_flag()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 62
    iget v1, p0, Ljp/danball/eartheditor/AdInterstitial;->state:I

    if-eqz v1, :cond_1

    iget v1, p0, Ljp/danball/eartheditor/AdInterstitial;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Ljp/danball/eartheditor/AdInterstitial;->state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljp/danball/eartheditor/AdInterstitial;->req_time:J

    const-wide/32 v6, 0x2bf20

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    iget v1, p0, Ljp/danball/eartheditor/AdInterstitial;->state:I

    if-ne v1, v0, :cond_2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljp/danball/eartheditor/AdInterstitial;->req_time:J

    const-wide/16 v6, 0x3a98

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 62
    :cond_1
    :goto_0
    return v0

    .line 65
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public req_time()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Ljp/danball/eartheditor/AdInterstitial;->req_time:J

    return-wide v0
.end method

.method public request()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Ljp/danball/eartheditor/AdInterstitial;->req_flag()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljp/danball/eartheditor/AdInterstitial;->ad_release()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Ljp/danball/eartheditor/AdInterstitial;->state:I

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljp/danball/eartheditor/AdInterstitial;->req_time:J

    .line 82
    const-string v0, "++ Admob Interstitial New"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Ljp/danball/eartheditor/AdInterstitial;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    .line 84
    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Ljp/danball/eartheditor/AdInterstitial;->ad_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Ljp/danball/eartheditor/AdInterstitial$1;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/AdInterstitial$1;-><init>(Ljp/danball/eartheditor/AdInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 119
    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial;->ad:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 125
    :cond_0
    return-void
.end method
