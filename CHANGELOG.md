# Changelog

All notable changes to this project will be documented in this file.

## Unreleased

### [PR 77](https://github.com/heiafr-isc/Data-Cockpit/pull/77)
major: awd

- general_libraries: patch description

### [PR 76](https://github.com/heiafr-isc/Data-Cockpit/pull/76)
minor: aw

- general_libraries: patch description

## 4.1.1 (2025.11.26)

### [PR 74](https://github.com/heiafr-isc/Data-Cockpit/pull/74)
patch: awd

- general_libraries: patch description

## 4.1.0 (2025.11.26)

### [PR 73](https://github.com/heiafr-isc/Data-Cockpit/pull/73)
minor: awd

- general_libraries: patch description

## 4.0.1 (2025.11.26)

### [PR 71](https://github.com/heiafr-isc/Data-Cockpit/pull/71)
patch: awd

- general_libraries: patch description

## 4.0.0 (2025.11.24)

### [PR 69](https://github.com/heiafr-isc/Data-Cockpit/pull/69)
major: Release error

- database: minor update short description

## 3.2.0 (2025.11.24)

### [PR 67](https://github.com/heiafr-isc/Data-Cockpit/pull/67)
minor: awd

- general_libraries: patch description

## 3.1.1 (2025.11.24)

### [PR 65](https://github.com/heiafr-isc/Data-Cockpit/pull/65)
patch: Resulting in two merges

- tree: patch description

## 3.1.0 (2025.11.24)

### [PR 63](https://github.com/heiafr-isc/Data-Cockpit/pull/63)
minor: Changed CIs

- tree: patch update short description

## 3.0.3 (2025.11.24)

### [PR 61](https://github.com/heiafr-isc/Data-Cockpit/pull/61)
patch: This PR resolves an issue in the readme file.

- tree: changed a typo

## 3.0.2 (2025.11.24)

### [PR 59](https://github.com/heiafr-isc/Data-Cockpit/pull/59)
patch: descr

- database: minor update short description

## 3.0.0 (2025.11.24)

### [PR 57](https://github.com/heiafr-isc/Data-Cockpit/pull/57)
patch: Git changes from dev to main

- database: minor update short description

## 3.0.0 (2025.11.24)

### [PR 55](https://github.com/heiafr-isc/Data-Cockpit/pull/55)
major: 1

- general_libraries: patch description

### [PR 54](https://github.com/heiafr-isc/Data-Cockpit/pull/54)
minor: 1

- database: minor update short description

## 2.2.0 (2025.11.24)

### [PR 52](https://github.com/heiafr-isc/Data-Cockpit/pull/52)
minor: adw

- database: minor update short description

## 2.1.2 (2025.11.24)

### [PR 50](https://github.com/heiafr-isc/Data-Cockpit/pull/50)
patch: awd

- tree: patch update short description

## 2.1.1 (2025.11.24)

### [PR 48](https://github.com/heiafr-isc/Data-Cockpit/pull/48)
patch: description HERE

- database: minor update short description

## 2.1.0 (2025.11.24)

### [PR 46](https://github.com/heiafr-isc/Data-Cockpit/pull/46)
minor: awdawd

- general_libraries: patch description

## 2.0.0 (2025.11.24)

### [PR 44](https://github.com/heiafr-isc/Data-Cockpit/pull/44)
major: Please

- database: minor update short description

## 1.7.0 (2025.11.24)

### [PR 42](https://github.com/heiafr-isc/Data-Cockpit/pull/42)
minor: Description

- general_libraries: patch description

## 1.6.1 (2025.11.24)

### [PR 40](https://github.com/heiafr-isc/Data-Cockpit/pull/40)
minor: awdawdadadw


- general_libraries: patch description

### [PR 37](https://github.com/heiafr-isc/Data-Cockpit/pull/37)
patch: Description here

- tree: patch update short description

## 1.6.0 (2025.11.23)

### [PR 35](https://github.com/heiafr-isc/Data-Cockpit/pull/35)
patch: awd

- tree: patch update short description

### [PR 33](https://github.com/heiafr-isc/Data-Cockpit/pull/33)
patch: 1


- general_libraries: patch description

### PR 31
patch: Coucou


- general_libraries: patch description

### PR 29
minor: 1


- database: minor update short description

### PR 27
patch: 1


- tree: patch update short description

### PR 25
patch: Deleted files


- tree: patch update short description

### PR 23
patch: 1


- database: minor update short description

### PR 21
patch: q


- database: minor update short description

### PR 19
patch: awd


- general_libraries: patch description

### PR 17
patch: awd


- database: minor update short description

### PR 15
patch: OUI !ü!!!!!!

- tree: patch update short description

### PR 13
patch: awdawd

- general_libraries: patch description

## 1.2.0 (2025.08.20)


Enhanced: div folder resources embedded into general_libraries.
- general_libraries: The `div` folder of the project root directory has been moved to the `general_libraries` resources, and references made by the Logger class have been updated accordingly. This allows the Logger to access the `div` folder resources without needing to be in the project root directory, making it more flexible.
- tree: Adaptation to the `Javanco` class to use refreshed references.

## 1.1.0 (2024.09.02)
Add the abstract class AbstractInOutDataManager to manage dependencies between components in a cleaner way.
- database: The recreated AbstractInOutDataManager implements both AdvancedDataRetriever and AbstractResultsManager interfaces. The central SmartDataPointCollector class can now simply extends the new abstract class. This way, the Database component make a more suitable use of interfaces hold by the general_libraries and still offers two dedicated "parts" useful for both the Tree and the Visualizer.
- general_libraries: Now holds the AdvancedDataRetriever and AbstractResultsManager interfaces. Conceptually, this is a better approach to protect other component from depending on each other. The general_libraries is meant to offers these kind of interface
- tree: Simple update to import interfaces placed in the general_libraries instead of the Database

## 1.0.1 (2024.09.01)
Deletion of unused interface known as SaveAndLoadAble
- database: The component has been adapted to the removal of the SaveAndLoadAble interface. The SmartDataPointCollector class no longer implements the interface

## 1.0.0 (2024.07.12)
Start of Data-Cockpit multi-module project : 

The program has been refactored and prepared for this public repository. 

