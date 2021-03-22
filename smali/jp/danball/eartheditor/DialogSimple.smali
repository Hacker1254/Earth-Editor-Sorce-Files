.class public final Ljp/danball/eartheditor/DialogSimple;
.super Landroid/support/v4/app/DialogFragment;
.source "DialogSimple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/danball/eartheditor/DialogSimple$Listner;,
        Ljp/danball/eartheditor/DialogSimple$State;
    }
.end annotation


# instance fields
.field private _state:Ljp/danball/eartheditor/DialogSimple$State;

.field public cancel:Ljava/lang/String;

.field public listener:Ljp/danball/eartheditor/DialogSimple$Listner;

.field public message:Ljava/lang/String;

.field public ok:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 99
    sget-object v0, Ljp/danball/eartheditor/DialogSimple$State;->None:Ljp/danball/eartheditor/DialogSimple$State;

    iput-object v0, p0, Ljp/danball/eartheditor/DialogSimple;->_state:Ljp/danball/eartheditor/DialogSimple$State;

    return-void
.end method

.method static synthetic access$002(Ljp/danball/eartheditor/DialogSimple;Ljp/danball/eartheditor/DialogSimple$State;)Ljp/danball/eartheditor/DialogSimple$State;
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/DialogSimple;
    .param p1, "x1"    # Ljp/danball/eartheditor/DialogSimple$State;

    .prologue
    .line 81
    iput-object p1, p0, Ljp/danball/eartheditor/DialogSimple;->_state:Ljp/danball/eartheditor/DialogSimple$State;

    return-object p1
.end method

.method static synthetic access$101(Ljp/danball/eartheditor/DialogSimple;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljp/danball/eartheditor/DialogSimple;
    .param p1, "x1"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getState()Ljp/danball/eartheditor/DialogSimple$State;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ljp/danball/eartheditor/DialogSimple;->_state:Ljp/danball/eartheditor/DialogSimple$State;

    return-object v0
.end method

.method public getStateOrdinal()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ljp/danball/eartheditor/DialogSimple;->_state:Ljp/danball/eartheditor/DialogSimple$State;

    invoke-virtual {v0}, Ljp/danball/eartheditor/DialogSimple$State;->ordinal()I

    move-result v0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 162
    sget-object v0, Ljp/danball/eartheditor/DialogSimple$State;->Cancel:Ljp/danball/eartheditor/DialogSimple$State;

    iput-object v0, p0, Ljp/danball/eartheditor/DialogSimple;->_state:Ljp/danball/eartheditor/DialogSimple$State;

    .line 163
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 164
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    sget-object v1, Ljp/danball/eartheditor/DialogSimple$State;->None:Ljp/danball/eartheditor/DialogSimple$State;

    iput-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->_state:Ljp/danball/eartheditor/DialogSimple$State;

    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ljp/danball/eartheditor/DialogSimple;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    :cond_0
    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 118
    :cond_1
    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->view:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 121
    :cond_2
    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->ok:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->ok:Ljava/lang/String;

    new-instance v2, Ljp/danball/eartheditor/DialogSimple$1;

    invoke-direct {v2, p0}, Ljp/danball/eartheditor/DialogSimple$1;-><init>(Ljp/danball/eartheditor/DialogSimple;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    :cond_3
    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->cancel:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->cancel:Ljava/lang/String;

    new-instance v2, Ljp/danball/eartheditor/DialogSimple$2;

    invoke-direct {v2, p0}, Ljp/danball/eartheditor/DialogSimple$2;-><init>(Ljp/danball/eartheditor/DialogSimple;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    :cond_4
    new-instance v1, Ljp/danball/eartheditor/DialogSimple$3;

    invoke-direct {v1, p0}, Ljp/danball/eartheditor/DialogSimple$3;-><init>(Ljp/danball/eartheditor/DialogSimple;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 168
    iget-object v0, p0, Ljp/danball/eartheditor/DialogSimple;->listener:Ljp/danball/eartheditor/DialogSimple$Listner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/DialogSimple;->listener:Ljp/danball/eartheditor/DialogSimple$Listner;

    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->_state:Ljp/danball/eartheditor/DialogSimple$State;

    invoke-interface {v0, v1}, Ljp/danball/eartheditor/DialogSimple$Listner;->onEvent(Ljp/danball/eartheditor/DialogSimple$State;)V

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 170
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Ljp/danball/eartheditor/DialogSimple$State;->None:Ljp/danball/eartheditor/DialogSimple$State;

    iput-object v0, p0, Ljp/danball/eartheditor/DialogSimple;->_state:Ljp/danball/eartheditor/DialogSimple$State;

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title_"    # Ljava/lang/String;
    .param p2, "message_"    # Ljava/lang/String;
    .param p3, "ok_"    # Ljava/lang/String;
    .param p4, "cancel_"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Ljp/danball/eartheditor/DialogSimple;->title:Ljava/lang/String;

    iput-object p2, p0, Ljp/danball/eartheditor/DialogSimple;->message:Ljava/lang/String;

    iput-object p3, p0, Ljp/danball/eartheditor/DialogSimple;->ok:Ljava/lang/String;

    iput-object p4, p0, Ljp/danball/eartheditor/DialogSimple;->cancel:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v1, Ljp/danball/eartheditor/DialogSimple$State;->Show:Ljp/danball/eartheditor/DialogSimple$State;

    iput-object v1, p0, Ljp/danball/eartheditor/DialogSimple;->_state:Ljp/danball/eartheditor/DialogSimple$State;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljp/danball/eartheditor/DialogSimple$4;

    invoke-direct {v1, p0, p1, p2}, Ljp/danball/eartheditor/DialogSimple$4;-><init>(Ljp/danball/eartheditor/DialogSimple;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method
