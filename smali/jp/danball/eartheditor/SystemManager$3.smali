.class Ljp/danball/eartheditor/SystemManager$3;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager;->showReview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/SystemManager;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SystemManager;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 366
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$3;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 368
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$3;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v2}, Ljp/danball/eartheditor/SystemManager;->access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljp/danball/eartheditor/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "appPackage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$3;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v2, v2, Ljp/danball/eartheditor/SystemManager;->amazon:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amzn://apps/android?p="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 370
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$3;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v2}, Ljp/danball/eartheditor/SystemManager;->access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljp/danball/eartheditor/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 371
    return-void

    .line 369
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
