.class Ljp/danball/eartheditor/SystemManager$4;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SystemManager;->savePhoto(Ljava/nio/ByteBuffer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/SystemManager;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state_tmp:I


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SystemManager;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/SystemManager;

    .prologue
    .line 453
    iput-object p1, p0, Ljp/danball/eartheditor/SystemManager$4;->this$0:Ljp/danball/eartheditor/SystemManager;

    iput-object p2, p0, Ljp/danball/eartheditor/SystemManager$4;->val$msg:Ljava/lang/String;

    iput p3, p0, Ljp/danball/eartheditor/SystemManager$4;->val$state_tmp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 455
    new-instance v0, Ljp/danball/eartheditor/SimpleAlertDialog;

    invoke-direct {v0}, Ljp/danball/eartheditor/SimpleAlertDialog;-><init>()V

    .line 456
    .local v0, "dialog":Ljp/danball/eartheditor/SimpleAlertDialog;
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$4;->val$msg:Ljava/lang/String;

    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->message:Ljava/lang/String;

    .line 457
    const-string v1, "OK"

    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->ok:Ljava/lang/String;

    .line 458
    new-instance v1, Ljp/danball/eartheditor/SystemManager$4$1;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/SystemManager$4$1;-><init>(Ljp/danball/eartheditor/SystemManager$4;)V

    iput-object v1, v0, Ljp/danball/eartheditor/SimpleAlertDialog;->listener:Ljp/danball/eartheditor/SimpleAlertDialog$Listner;

    .line 464
    iget-object v1, p0, Ljp/danball/eartheditor/SystemManager$4;->this$0:Ljp/danball/eartheditor/SystemManager;

    invoke-static {v1}, Ljp/danball/eartheditor/SystemManager;->access$000(Ljp/danball/eartheditor/SystemManager;)Ljp/danball/eartheditor/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljp/danball/eartheditor/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "photo"

    invoke-virtual {v0, v1, v2}, Ljp/danball/eartheditor/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 465
    return-void
.end method
