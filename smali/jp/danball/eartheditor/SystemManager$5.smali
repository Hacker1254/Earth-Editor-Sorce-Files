.class Ljp/danball/eartheditor/SystemManager$5;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager;->showNameDialog(IIIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/SystemManager;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SystemManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 487
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    iput-object p2, p0, Ljp/danball/eartheditor/SystemManager$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 490
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v4}, Ljp/danball/eartheditor/SystemManager;->access$200(Ljp/danball/eartheditor/SystemManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Ljp/danball/eartheditor/SystemManager;->access$102(Ljp/danball/eartheditor/SystemManager;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 491
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v2}, Ljp/danball/eartheditor/SystemManager;->access$100(Ljp/danball/eartheditor/SystemManager;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 492
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v2}, Ljp/danball/eartheditor/SystemManager;->access$100(Ljp/danball/eartheditor/SystemManager;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-object v3, v3, Ljp/danball/eartheditor/SystemManager;->send_name:Ljava/lang/String;

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 493
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v2}, Ljp/danball/eartheditor/SystemManager;->access$100(Ljp/danball/eartheditor/SystemManager;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v2, v2, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v2, :cond_0

    const-string v2, "\u540d\u524d\u3092\u3044\u308c\u3066\u304f\u3060\u3055\u3044"

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 495
    new-array v0, v5, [Landroid/text/InputFilter;

    .line 496
    .local v0, "_inputFilter":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 497
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v2}, Ljp/danball/eartheditor/SystemManager;->access$100(Ljp/danball/eartheditor/SystemManager;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 499
    new-instance v1, Ljp/danball/eartheditor/SimpleAlertDialog;

    invoke-direct {v1}, Ljp/danball/eartheditor/SimpleAlertDialog;-><init>()V

    .line 500
    .local v1, "dialog":Ljp/danball/eartheditor/SimpleAlertDialog;
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v2, v2, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v2, :cond_1

    const-string v2, "\u30ef\u30fc\u30eb\u30c9\u30e9\u30f3\u30ad\u30f3\u30b0"

    :goto_1
    iput-object v2, v1, Ljp/danball/eartheditor/SimpleAlertDialog;->title:Ljava/lang/String;

    .line 501
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->val$msg:Ljava/lang/String;

    iput-object v2, v1, Ljp/danball/eartheditor/SimpleAlertDialog;->message:Ljava/lang/String;

    .line 502
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v2, v2, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v2, :cond_2

    const-string v2, "\u304a\u304f\u308b"

    :goto_2
    iput-object v2, v1, Ljp/danball/eartheditor/SimpleAlertDialog;->ok:Ljava/lang/String;

    .line 503
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    iget-boolean v2, v2, Ljp/danball/eartheditor/SystemManager;->lang_ja:Z

    if-eqz v2, :cond_3

    const-string v2, "\u3084\u3081\u308b"

    :goto_3
    iput-object v2, v1, Ljp/danball/eartheditor/SimpleAlertDialog;->cancel:Ljava/lang/String;

    .line 504
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v2}, Ljp/danball/eartheditor/SystemManager;->access$100(Ljp/danball/eartheditor/SystemManager;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, v1, Ljp/danball/eartheditor/SimpleAlertDialog;->view:Landroid/view/View;

    .line 505
    new-instance v2, Ljp/danball/eartheditor/SystemManager$5$1;

    invoke-direct {v2, p0}, Ljp/danball/eartheditor/SystemManager$5$1;-><init>(Ljp/danball/eartheditor/SystemManager$5;)V

    iput-object v2, v1, Ljp/danball/eartheditor/SimpleAlertDialog;->listener:Ljp/danball/eartheditor/SimpleAlertDialog$Listner;

    .line 522
    iget-object v2, p0, Ljp/danball/eartheditor/SystemManager$5;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v2}, Ljp/danball/eartheditor/SystemManager;->access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljp/danball/eartheditor/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "send"

    invoke-virtual {v1, v2, v3}, Ljp/danball/eartheditor/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 555
    return-void

    .line 493
    .end local v0    # "_inputFilter":[Landroid/text/InputFilter;
    .end local v1    # "dialog":Ljp/danball/eartheditor/SimpleAlertDialog;
    :cond_0
    const-string v2, "Your name here."

    goto :goto_0

    .line 500
    .restart local v0    # "_inputFilter":[Landroid/text/InputFilter;
    .restart local v1    # "dialog":Ljp/danball/eartheditor/SimpleAlertDialog;
    :cond_1
    const-string v2, "Leaderboard"

    goto :goto_1

    .line 502
    :cond_2
    const-string v2, "Submit"

    goto :goto_2

    .line 503
    :cond_3
    const-string v2, "Cancel"

    goto :goto_3
.end method
