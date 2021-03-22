.class Ljp/danball/eartheditor/SimpleAlertDialog$3;
.super Ljava/lang/Object;
.source "SimpleAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 97
    iput-object p1, p0, Ljp/danball/eartheditor/SimpleAlertDialog$3;->this$0:Ljp/danball/eartheditor/SimpleAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 100
    sparse-switch p2, :sswitch_data_0

    .line 110
    :goto_0
    return v0

    .line 102
    :sswitch_0
    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog$3;->this$0:Ljp/danball/eartheditor/SimpleAlertDialog;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljp/danball/eartheditor/SimpleAlertDialog;->access$002(Ljp/danball/eartheditor/SimpleAlertDialog;I)I

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 107
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method
