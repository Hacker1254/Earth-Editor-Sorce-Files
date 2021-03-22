.class public final Ljp/danball/eartheditor/Indicator;
.super Ljava/lang/Object;
.source "Indicator.java"


# static fields
.field private static dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hide()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Ljp/danball/eartheditor/Indicator;->dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    sget-object v0, Ljp/danball/eartheditor/Indicator;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 22
    const/4 v0, 0x0

    sput-object v0, Ljp/danball/eartheditor/Indicator;->dialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public static final show(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 10
    sget-object v0, Ljp/danball/eartheditor/Indicator;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 17
    :goto_0
    return-void

    .line 12
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljp/danball/eartheditor/Indicator;->dialog:Landroid/app/ProgressDialog;

    .line 13
    sget-object v0, Ljp/danball/eartheditor/Indicator;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 15
    sget-object v0, Ljp/danball/eartheditor/Indicator;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 16
    sget-object v0, Ljp/danball/eartheditor/Indicator;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
