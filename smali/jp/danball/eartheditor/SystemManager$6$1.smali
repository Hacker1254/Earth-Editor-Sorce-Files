.class Ljp/danball/eartheditor/SystemManager$6$1;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager$6;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/danball/eartheditor/SystemManager$6;

.field final synthetic val$send_state_tmp:I


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SystemManager$6;I)V
    .locals 0
    .param p1, "this$1"    # Ljp/danball/eartheditor/SystemManager$6;

    .prologue
    .line 608
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iput p2, p0, Ljp/danball/eartheditor/SystemManager$6$1;->val$send_state_tmp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 610
    iget v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->val$send_state_tmp:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 611
    new-instance v0, Ljp/danball/eartheditor/SimpleAlertDialog;

    invoke-direct {v0}, Ljp/danball/eartheditor/SimpleAlertDialog;-><init>()V

    .line 612
    .local v0, "dialog":Ljp/danball/eartheditor/SimpleAlertDialog;
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_0

    const-string v1, "\u304a\u304f\u308a\u307e\u3057\u305f"

    :goto_0
    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->title:Ljava/lang/String;

    .line 613
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_1

    const-string v1, "\u30e9\u30f3\u30ad\u30f3\u30b0\u3092\u307f\u307e\u3059\u304b\uff1f"

    :goto_1
    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->message:Ljava/lang/String;

    .line 614
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_2

    const-string v1, "\u307f\u308b"

    :goto_2
    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->ok:Ljava/lang/String;

    .line 615
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_3

    const-string v1, "\u3084\u3081\u308b"

    :goto_3
    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->cancel:Ljava/lang/String;

    .line 616
    new-instance v1, Ljp/danball/eartheditor/SystemManager$6$1$1;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/SystemManager$6$1$1;-><init>(Ljp/danball/eartheditor/SystemManager$6$1;)V

    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->listener:Ljp/danball/eartheditor/SimpleAlertDialog$Listner;

    .line 627
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v1}, Ljp/danball/eartheditor/SystemManager;->access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljp/danball/eartheditor/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "send_success"

    invoke-virtual {v0, v1, v2}, Ljp/danball/eartheditor/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 642
    :goto_4
    return-void

    .line 612
    :cond_0
    const-string v1, "Submitted"

    goto :goto_0

    .line 613
    :cond_1
    const-string v1, "View Leaderboard?"

    goto :goto_1

    .line 614
    :cond_2
    const-string v1, "View"

    goto :goto_2

    .line 615
    :cond_3
    const-string v1, "Cancel"

    goto :goto_3

    .line 630
    .end local v0    # "dialog":Ljp/danball/eartheditor/SimpleAlertDialog;
    :cond_4
    new-instance v0, Ljp/danball/eartheditor/SimpleAlertDialog;

    invoke-direct {v0}, Ljp/danball/eartheditor/SimpleAlertDialog;-><init>()V

    .line 631
    .restart local v0    # "dialog":Ljp/danball/eartheditor/SimpleAlertDialog;
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_5

    const-string v1, "\u30ef\u30fc\u30eb\u30c9\u30e9\u30f3\u30ad\u30f3\u30b0"

    :goto_5
    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->title:Ljava/lang/String;

    .line 632
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_6

    const-string v1, "\u901a\u4fe1\u30a8\u30e9\u30fc"

    :goto_6
    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->message:Ljava/lang/String;

    .line 633
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v1, v1, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v1, :cond_7

    const-string v1, "\u3068\u3058\u308b"

    :goto_7
    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->ok:Ljava/lang/String;

    .line 634
    new-instance v1, Ljp/danball/eartheditor/SystemManager$6$1$2;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/SystemManager$6$1$2;-><init>(Ljp/danball/eartheditor/SystemManager$6$1;)V

    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->listener:Ljp/danball/eartheditor/SimpleAlertDialog$Listner;

    .line 640
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$6$1;->this$1:Ljp/danball/eartheditor/SystemManager$6;

    iget-object v1, v1, Ljp/danball/eartheditor/SystemManager$6;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v1}, Ljp/danball/eartheditor/SystemManager;->access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljp/danball/eartheditor/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "send_error"

    invoke-virtual {v0, v1, v2}, Ljp/danball/eartheditor/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4

    .line 631
    :cond_5
    const-string v1, "Leaderboard"

    goto :goto_5

    .line 632
    :cond_6
    const-string v1, "Submit failed"

    goto :goto_6

    .line 633
    :cond_7
    const-string v1, "Close"

    goto :goto_7
.end method
