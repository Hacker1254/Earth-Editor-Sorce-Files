.class public final Ljp/danball/eartheditor/ExitDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ExitDialog.java"


# instance fields
.field public ad_rect:Ljp/danball/eartheditor/AdBanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljp/danball/eartheditor/ExitDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 38
    .local v0, "activity":Landroid/app/Activity;
    sget-object v10, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 40
    .local v4, "ja":Ljava/lang/Boolean;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    .local v5, "layoutH":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    .local v9, "text":Landroid/widget/TextView;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "\u7d42\u4e86\u3057\u307e\u3059\u304b\uff1f"

    :goto_0
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v10, -0x333334

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 48
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v8, "param_text":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50
    invoke-virtual {v5, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, "buttonP":Landroid/widget/Button;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "\u7d42\u4e86"

    :goto_1
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v10, Ljp/danball/eartheditor/ExitDialog$1;

    invoke-direct {v10, p0}, Ljp/danball/eartheditor/ExitDialog$1;-><init>(Ljp/danball/eartheditor/ExitDialog;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v7, "param_button":Landroid/widget/LinearLayout$LayoutParams;
    const v10, 0x3f828f5c    # 1.02f

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 70
    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, "buttonN":Landroid/widget/Button;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    :goto_2
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v10, Ljp/danball/eartheditor/ExitDialog$2;

    invoke-direct {v10, p0}, Ljp/danball/eartheditor/ExitDialog$2;-><init>(Ljp/danball/eartheditor/ExitDialog;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v5, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v6, "layoutV":Landroid/widget/LinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    iget-object v10, p0, Ljp/danball/eartheditor/ExitDialog;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v10, :cond_0

    .line 87
    iget-object v10, p0, Ljp/danball/eartheditor/ExitDialog;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v6, v11, v12, v13}, Ljp/danball/eartheditor/AdBanner;->show(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Landroid/view/animation/Animation;Z)V

    .line 89
    :cond_0
    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-virtual {v6, v5, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 92
    new-instance v3, Landroid/app/Dialog;

    invoke-virtual {p0}, Ljp/danball/eartheditor/ExitDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 93
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 94
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x400

    const/16 v12, 0x100

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 95
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const v12, -0xbbbbbc

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 97
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 100
    new-instance v10, Ljp/danball/eartheditor/ExitDialog$3;

    invoke-direct {v10, p0}, Ljp/danball/eartheditor/ExitDialog$3;-><init>(Ljp/danball/eartheditor/ExitDialog;)V

    invoke-virtual {v3, v10}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 116
    return-object v3

    .line 45
    .end local v1    # "buttonN":Landroid/widget/Button;
    .end local v2    # "buttonP":Landroid/widget/Button;
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v6    # "layoutV":Landroid/widget/LinearLayout;
    .end local v7    # "param_button":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "param_text":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const-string v10, "Quit?"

    goto/16 :goto_0

    .line 54
    .restart local v2    # "buttonP":Landroid/widget/Button;
    .restart local v8    # "param_text":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const-string v10, "Quit"

    goto/16 :goto_1

    .line 74
    .restart local v1    # "buttonN":Landroid/widget/Button;
    .restart local v7    # "param_button":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const-string v10, "Cancel"

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 123
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 130
    iget-object v0, p0, Ljp/danball/eartheditor/ExitDialog;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/ExitDialog;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    invoke-virtual {v0}, Ljp/danball/eartheditor/AdBanner;->hide()V

    .line 131
    :cond_0
    return-void
.end method
