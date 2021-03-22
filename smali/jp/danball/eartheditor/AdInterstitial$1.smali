.class Ljp/danball/eartheditor/AdInterstitial$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/AdInterstitial;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/AdInterstitial;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/AdInterstitial;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/AdInterstitial;

    .prologue
    .line 85
    iput-object p1, p0, Ljp/danball/eartheditor/AdInterstitial$1;->this$0:Ljp/danball/eartheditor/AdInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial$1;->this$0:Ljp/danball/eartheditor/AdInterstitial;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljp/danball/eartheditor/AdInterstitial;->access$002(Ljp/danball/eartheditor/AdInterstitial;I)I

    .line 111
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 98
    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial$1;->this$0:Ljp/danball/eartheditor/AdInterstitial;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljp/danball/eartheditor/AdInterstitial;->access$002(Ljp/danball/eartheditor/AdInterstitial;I)I

    .line 99
    const-string v0, "** Admob Interstitial Failed"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial$1;->this$0:Ljp/danball/eartheditor/AdInterstitial;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljp/danball/eartheditor/AdInterstitial;->access$002(Ljp/danball/eartheditor/AdInterstitial;I)I

    .line 117
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 90
    iget-object v0, p0, Ljp/danball/eartheditor/AdInterstitial$1;->this$0:Ljp/danball/eartheditor/AdInterstitial;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljp/danball/eartheditor/AdInterstitial;->access$002(Ljp/danball/eartheditor/AdInterstitial;I)I

    .line 91
    const-string v0, "@@ Admob Interstitial Loaded"

    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method
