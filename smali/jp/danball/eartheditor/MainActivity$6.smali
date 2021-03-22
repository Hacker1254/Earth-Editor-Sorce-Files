.class Ljp/danball/eartheditor/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/MainActivity;->showRanking(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/MainActivity;

.field final synthetic val$stage:I


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/MainActivity;I)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/MainActivity;

    .prologue
    .line 778
    iput-object p1, p0, Ljp/danball/eartheditor/MainActivity$6;->this$0:Ljp/danball/eartheditor/MainActivity;

    iput p2, p0, Ljp/danball/eartheditor/MainActivity$6;->val$stage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 780
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity$6;->this$0:Ljp/danball/eartheditor/MainActivity;

    const-class v2, Ljp/danball/eartheditor/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 781
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Ljp/danball/eartheditor/MainActivity$6;->this$0:Ljp/danball/eartheditor/MainActivity;

    iget-object v2, v2, Ljp/danball/eartheditor/MainActivity;->sys:Ljp/danball/eartheditor/SystemManager;

    iget v3, p0, Ljp/danball/eartheditor/MainActivity$6;->val$stage:I

    invoke-virtual {v2, v3}, Ljp/danball/eartheditor/SystemManager;->getWebRankingURL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    iget-object v1, p0, Ljp/danball/eartheditor/MainActivity$6;->this$0:Ljp/danball/eartheditor/MainActivity;

    const/16 v2, 0x12c

    invoke-virtual {v1, v0, v2}, Ljp/danball/eartheditor/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 783
    return-void
.end method
