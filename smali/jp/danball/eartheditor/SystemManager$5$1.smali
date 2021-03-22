.class Ljp/danball/eartheditor/SystemManager$5$1;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Ljp/danball/eartheditor/SimpleAlertDialog$Listner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/danball/eartheditor/SystemManager$5;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SystemManager$5;)V
    .locals 0
    .param p1, "this$1"    # Ljp/danball/eartheditor/SystemManager$5;

    .prologue
    .line 505
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$5$1;->this$1:Ljp/danball/eartheditor/SystemManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 508
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 510
    :try_start_0
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager$5$1;->this$1:Ljp/danball/eartheditor/SystemManager$5;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v0}, Ljp/danball/eartheditor/SystemManager;->access$100(Ljp/danball/eartheditor/SystemManager;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager$5$1;->this$1:Ljp/danball/eartheditor/SystemManager$5;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v0}, Ljp/danball/eartheditor/SystemManager;->access$100(Ljp/danball/eartheditor/SystemManager;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :cond_0
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager$5$1;->this$1:Ljp/danball/eartheditor/SystemManager$5;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5$1;->this$1:Ljp/danball/eartheditor/SystemManager$5;

    iget-object v2, v2, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v2}, Ljp/danball/eartheditor/SystemManager;->access$100(Ljp/danball/eartheditor/SystemManager;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/16 v2, 0x2c

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x25

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljp/danball/eartheditor/SystemManager;->send_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    iget-object v0, p0, Ljp/danball/eartheditor/SystemManager$5$1;->this$1:Ljp/danball/eartheditor/SystemManager$5;

    iget-object v0, v0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v0}, Ljp/danball/eartheditor/SystemManager;->access$300(Ljp/danball/eartheditor/SystemManager;)V

    .line 520
    :cond_1
    return-void

    .line 512
    :catch_0
    move-exception v0

    goto :goto_0
.end method
