.class public final Ljp/danball/eartheditor/SimpleAlertDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SimpleAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/danball/eartheditor/SimpleAlertDialog$Listner;
    }
.end annotation


# static fields
.field static final EVENT_BUTTON_N:I = 0x2

.field static final EVENT_BUTTON_P:I = 0x1

.field static final EVENT_CANCEL:I = 0x3

.field static final EVENT_KEY_BACK:I = 0x4

.field static final EVENT_NONE:I


# instance fields
.field public cancel:Ljava/lang/String;

.field private event_tmp:I

.field public listener:Ljp/danball/eartheditor/SimpleAlertDialog$Listner;

.field public message:Ljava/lang/String;

.field public ok:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljp/danball/eartheditor/SimpleAlertDialog;I)I
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/SimpleAlertDialog;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->event_tmp:I

    return p1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 120
    const/4 v0, 0x3

    iput v0, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->event_tmp:I

    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 122
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const/4 v1, 0x0

    iput v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->event_tmp:I

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ljp/danball/eartheditor/SimpleAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    :cond_0
    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    :cond_1
    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->view:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 79
    :cond_2
    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->ok:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->ok:Ljava/lang/String;

    new-instance v2, Ljp/danball/eartheditor/SimpleAlertDialog$1;

    invoke-direct {v2, p0}, Ljp/danball/eartheditor/SimpleAlertDialog$1;-><init>(Ljp/danball/eartheditor/SimpleAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    :cond_3
    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->cancel:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->cancel:Ljava/lang/String;

    new-instance v2, Ljp/danball/eartheditor/SimpleAlertDialog$2;

    invoke-direct {v2, p0}, Ljp/danball/eartheditor/SimpleAlertDialog$2;-><init>(Ljp/danball/eartheditor/SimpleAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    :cond_4
    new-instance v1, Ljp/danball/eartheditor/SimpleAlertDialog$3;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/SimpleAlertDialog$3;-><init>(Ljp/danball/eartheditor/SimpleAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 126
    iget-object v0, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->listener:Ljp/danball/eartheditor/SimpleAlertDialog$Listner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->listener:Ljp/danball/eartheditor/SimpleAlertDialog$Listner;

    iget v1, p0, Ljp/danball/eartheditor/SimpleAlertDialog;->event_tmp:I

    invoke-interface {v0, v1}, Ljp/danball/eartheditor/SimpleAlertDialog$Listner;->onEvent(I)V

    .line 127
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 128
    return-void
.end method
