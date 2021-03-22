.class Ljp/danball/eartheditor/AdBanner$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/AdBanner;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/AdBanner;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/AdBanner;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/AdBanner;

    .prologue
    .line 133
    iput-object p1, p0, Ljp/danball/eartheditor/AdBanner$1;->this$0:Ljp/danball/eartheditor/AdBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 144
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner$1;->this$0:Ljp/danball/eartheditor/AdBanner;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljp/danball/eartheditor/AdBanner;->access$002(Ljp/danball/eartheditor/AdBanner;I)I

    .line 145
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner$1;->this$0:Ljp/danball/eartheditor/AdBanner;

    iget-object v0, v0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    if-ne v0, v1, :cond_0

    const-string v0, "** Admob Rectangle Failed"

    :goto_0
    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 146
    return-void

    .line 145
    :cond_0
    const-string v0, "** Admob Banner Failed"

    goto :goto_0
.end method

.method public onAdLeftApplication()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner$1;->this$0:Ljp/danball/eartheditor/AdBanner;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljp/danball/eartheditor/AdBanner;->access$002(Ljp/danball/eartheditor/AdBanner;I)I

    .line 138
    iget-object v0, p0, Ljp/danball/eartheditor/AdBanner$1;->this$0:Ljp/danball/eartheditor/AdBanner;

    iget-object v0, v0, Ljp/danball/eartheditor/AdBanner;->ad_size:Lcom/google/android/gms/ads/AdSize;

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    if-ne v0, v1, :cond_0

    const-string v0, "@@ Admob Rectangle Loaded"

    :goto_0
    invoke-static {v0}, Ljp/danball/eartheditor/DebugLog;->Log(Ljava/lang/String;)V

    .line 139
    return-void

    .line 138
    :cond_0
    const-string v0, "@@ Admob Banner Loaded"

    goto :goto_0
.end method

.method public onAdOpened()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
