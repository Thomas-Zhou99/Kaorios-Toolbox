in class: Landroid/app/ApplicationPackageManager;

1. add  field:
# instance fields
.field private final mContext:Landroid/content/Context;

-----------------------

2. add method:
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/content/Context;

    return-void
.end method

------------------------

3. search and replace method: 

hasSystemFeature(Ljava/lang/String;)Z

replace:

.method public hasSystemFeature(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0, p1}, Lcom/android/internal/util/kaorios/ToolboxUtils;->KaoriStrongBoxFeatures(ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

-----------------------------------

4. search method:

    hasSystemFeature(Ljava/lang/String;I)Z


Replace the number after "register x" with " .registers 13"


in method search:

    sget-object xX, Landroid/app/ApplicationPackageManager;->mHasSystemFeatureCache:Landroid/app/PropertyInvalidatedCache;


add before the line just found:

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/content/Context;

    const-wide/32 v2, -0x655906fc

    invoke-static {v2, v3}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->Ku5O3sihzbUhwSewE8uI:[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->Kq5pt6AeqxqwOjab0R8ioI:[Ljava/lang/String;

    sget-object v5, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->KmwO02nawgUws9Syxnq2rElI:[Ljava/lang/String;

    sget-object v6, Lcom/android/internal/util/kaorios/KwihcgnOnp0zreUtbfS8ege8fEkI;->Kq4snztAiatOsRsxI:[Ljava/lang/String;

    if-eqz v0, :cond_b3

    const-wide v7, -0x14655906fcL

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_83

    const-wide v7, -0x3c655906fcL

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_83

    const-wide v7, -0x60655906fcL

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_83

    const-wide v7, -0x90655906fcL

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_83

    const-wide v7, -0xaa655906fcL

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    if-nez v1, :cond_b3

    :cond_83
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    goto/16 :goto_17a

    :cond_8f
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    goto/16 :goto_17a

    :cond_9b
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a7

    goto/16 :goto_17a

    :cond_a7
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    goto/16 :goto_17a

    :cond_b3
    const/4 v7, 0x0

    if-eqz v0, :cond_f5

    const-wide v8, -0xc9655906fcL

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f5

    if-eqz v1, :cond_f5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    goto :goto_e8

    :cond_d2
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    goto/16 :goto_17a

    :cond_de
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    :goto_e8
    return v7

    :cond_e9
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    goto/16 :goto_17a

    :cond_f5
    iget-object p0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/content/Context;

    const-wide v8, -0xe8655906fcL

    invoke-static {v8, v9}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Lcom/android/internal/util/kaorios/SettingsHelper;->isToggleEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    const-wide v7, -0xfb655906fcL

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v7, -0x10c655906fcL

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_14b

    const-wide v7, -0x129655906fcL

    invoke-static {v7, v8}, Lcom/android/internal/util/kaorios/Ks23qmqAooOtt2x0xRh6I;->K91vAo8w086Op21a5bR8uI(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    if-eqz v1, :cond_13c

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    goto :goto_17a

    :cond_13c
    if-nez v1, :cond_14b

    if-eqz p0, :cond_14b

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    goto :goto_17a

    :cond_14b
    if-eqz p1, :cond_15a

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    if-nez v1, :cond_15a

    return p0

    :cond_15a
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_165

    goto :goto_17a

    :cond_165
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_170

    goto :goto_17a

    :cond_170
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17b

    :goto_17a
    return v3

    :cond_17b
    
    

-----------------------------------------
