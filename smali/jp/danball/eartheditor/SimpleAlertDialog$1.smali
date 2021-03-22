.class Ljp/danball/eartheditor/SimpleAlertDialog$1;
.super Ljava/lang/Object;
.source "SimpleAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/SimpleAlertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/SimpleAlertDialog;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/SimpleAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/SimpleAlertDialog;

    .prologue
    .line 79
    iput-object p1, p0, Ljp/danball/eartheditor/SimpleAlertDialog$1;->this$0:Ljp/danball/eartheditor/SimpleAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 82
    iget-object v0, p0, Ljp/danball/eartheditor/SimpleAlertDialog$1;->this$0:Ljp/danball/eartheditor/SimpleAlertDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljp/danball/eartheditor/SimpleAlertDialog;->access$002(Ljp/danball/eartheditor/SimpleAlertDialog;I)I

    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    return-void
.end method
