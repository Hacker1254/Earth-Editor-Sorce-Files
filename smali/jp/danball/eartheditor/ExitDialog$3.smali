.class Ljp/danball/eartheditor/ExitDialog$3;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/ExitDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/ExitDialog;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/ExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/ExitDialog;

    .prologue
    .line 100
    iput-object p1, p0, Ljp/danball/eartheditor/ExitDialog$3;->this$0:Ljp/danball/eartheditor/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 103
    sparse-switch p2, :sswitch_data_0

    .line 112
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
