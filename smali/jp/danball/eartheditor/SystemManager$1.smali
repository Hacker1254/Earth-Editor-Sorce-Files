.class Ljp/danball/eartheditor/SystemManager$1;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager;->web()V
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
    .line 343
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$1;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$1;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->digitalgene:Z

    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://digital-gene.com/app.php?g=%d&lang=%s&p=%s"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v5, p0, Ljp/danball/eartheditor/SystemManager$1;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget v5, v5, Ljp/danball/eartheditor/SystemManager;->app_num:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$1;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_1

    const-string v1, "ja"

    :goto_0
    aput-object v1, v4, v5

    const/4 v5, 0x2

    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$1;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->amazon:Z

    if-eqz v1, :cond_2

    const-string v1, "amazon"

    :goto_1
    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 348
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_2
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$1;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v1}, Ljp/danball/eartheditor/SystemManager;->access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljp/danball/eartheditor/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 349
    return-void

    .line 346
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "en"

    goto :goto_0

    :cond_2
    const-string v1, "google"

    goto :goto_1

    .line 347
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$1;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->danball:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$1;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_4

    const-string v1, "http://dan-ball.jp/m/"

    :goto_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v1, "http://dan-ball.jp/en/m/"

    goto :goto_3
.end method
