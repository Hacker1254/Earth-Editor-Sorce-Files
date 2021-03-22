.class Ljp/danball/eartheditor/AdReward$2;
.super Ljava/lang/Object;
.source "AdReward.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/AdReward;->request(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/AdReward;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/AdReward;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/AdReward;

    .prologue
    .line 73
    iput-object p1, p0, Ljp/danball/eartheditor/AdReward$2;->this$0:Ljp/danball/eartheditor/AdReward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Ljp/danball/eartheditor/AdReward$2;->this$0:Ljp/danball/eartheditor/AdReward;

    invoke-static {v0}, Ljp/danball/eartheditor/AdReward;->access$000(Ljp/danball/eartheditor/AdReward;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object v0

    iget-object v1, p0, Ljp/danball/eartheditor/AdReward$2;->this$0:Ljp/danball/eartheditor/AdReward;

    invoke-static {v1}, Ljp/danball/eartheditor/AdReward;->access$300(Ljp/danball/eartheditor/AdReward;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/RewardedVideoAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    .line 77
    return-void
.end method
