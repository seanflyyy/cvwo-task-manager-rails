# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

labels = Label.create([
    {
        title: "School",
        color: "orange"
    }, 
    {
        title: "Groceries",
        color: "green"
    }, 
    {
        title: "General", 
        color: "blue"
    },
])

tasks = Task.create([
    {
        title: "Module Registration Round 2", 
        completed: false, 
        due: Time.strptime('03/01/2022 09:00', '%d/%m/%Y %H:%M'),
        label: labels.first,
    }, 
    {
        title: "Build SOSG Application", 
        completed: false, 
        due: Time.strptime('31/12/2021 09:00', '%d/%m/%Y %H:%M'),
        label: labels.third,
    }, 
])