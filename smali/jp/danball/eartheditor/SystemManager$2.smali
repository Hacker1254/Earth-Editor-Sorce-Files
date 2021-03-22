.class Ljp/danball/eartheditor/SystemManager$2;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager;->web2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/SystemManager;

.field final synthetic val$url_str:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SystemManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 354
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$2;->this$0:Ljp/danball/eartheditor/SystemManager;

    iput-object p2, p0, Ljp/danball/eartheditor/SystemManager$2;->val$url_str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$2;->val$url_str:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$2;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v1}, Ljp/danball/eartheditor/SystemManager;->access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljp/danball/eartheditor/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 358
    return-void
.end method
